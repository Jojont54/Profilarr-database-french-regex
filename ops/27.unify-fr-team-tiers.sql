-- @operation: export
-- @entity: batch
-- @name: Unified French team tiers
-- @exportedAt: 2026-09-12T00:00:00.000Z

-- Build one source of truth for release-group quality. Historical source-specific
-- tiers are used as evidence, then removed from the final database.

DROP TABLE IF EXISTS temp.fr_special_team_regexes;
CREATE TEMP TABLE fr_special_team_regexes (
  regex_name TEXT PRIMARY KEY,
  category TEXT NOT NULL
);

INSERT OR IGNORE INTO fr_special_team_regexes (regex_name, category)
SELECT cp.regular_expression_name, 'fansub'
FROM condition_patterns cp
JOIN custom_format_conditions cfc
  ON cfc.custom_format_name = cp.custom_format_name
 AND cfc.name = cp.condition_name
WHERE cp.custom_format_name = 'FR Anime FanSub'
  AND cfc.type = 'release_group';

INSERT OR REPLACE INTO fr_special_team_regexes (regex_name, category)
VALUES
  ('Erai-raws', 'subfr'),
  ('ToonsHub', 'subfr'),
  ('VARYG', 'subfr');

INSERT INTO custom_formats (name, description)
VALUES (
  'FR Anime SubFr',
  'Matches trusted anime groups whose releases commonly provide French subtitles through VOSTFR or MultiSub releases.'
)
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

WITH tag(tag_name) AS (
  VALUES ('French'), ('Release Group'), ('Release Group Tier')
)
INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'FR Anime SubFr', tag_name
FROM tag;

INSERT OR IGNORE INTO custom_format_conditions (
  custom_format_name, name, type, arr_type, negate, required
)
SELECT 'FR Anime SubFr', regex_name, 'release_group', 'all', 0, 0
FROM fr_special_team_regexes
WHERE category = 'subfr';

INSERT OR IGNORE INTO condition_patterns (
  custom_format_name, condition_name, regular_expression_name
)
SELECT 'FR Anime SubFr', regex_name, regex_name
FROM fr_special_team_regexes
WHERE category = 'subfr';

DROP TABLE IF EXISTS temp.fr_team_evidence;
CREATE TEMP TABLE fr_team_evidence (
  regex_name TEXT NOT NULL,
  category TEXT NOT NULL,
  tier INTEGER NOT NULL CHECK (tier BETWEEN 1 AND 4),
  PRIMARY KEY (regex_name, category)
);

-- Equivalent Movie/TV and 1080p/2160p lists share a category so duplicated
-- historical lists do not receive extra weight in the average.
WITH evidence_map(custom_format_name, category, tier) AS (
  VALUES
    ('FR WEB Top Tier', 'web', 1),
    ('FR WEB Tier 1', 'web', 1),
    ('FR WEB Tier 2', 'web', 2),
    ('FR WEB Tier 3', 'web', 3),
    ('FR Movie WEB Tier 01', 'web', 1),
    ('FR Movie WEB Tier 02', 'web', 2),
    ('FR TV WEB Tier 01', 'web', 1),
    ('FR TV WEB Tier 02', 'web', 2),
    ('FR TV WEB Tier 03', 'web', 3),
    ('FR Bluray Tier 1', 'bluray', 1),
    ('FR Bluray Tier 2', 'bluray', 2),
    ('FR Movie HD Bluray Tier 01', 'bluray', 1),
    ('FR Movie HD Bluray Tier 02', 'bluray', 2),
    ('FR TV HD Bluray Tier 01', 'bluray', 1),
    ('FR UHD Bluray Tier 1', 'uhd_bluray', 1),
    ('FR UHD Bluray Tier 2', 'uhd_bluray', 2),
    ('FR Movie UHD Bluray Tier 01', 'uhd_bluray', 1),
    ('FR Movie UHD Bluray Tier 02', 'uhd_bluray', 2),
    ('FR Remux Tier 1', 'remux', 1),
    ('FR Remux Tier 2', 'remux', 2),
    ('FR Movie Remux Tier 01', 'remux', 1),
    ('FR Movie Remux Tier 02', 'remux', 2),
    ('FR TV Remux Tier 01', 'remux', 1),
    ('FR Light Tier 1', 'light', 1),
    ('FR Light Tier 2', 'light', 2),
    ('FR HDLight Tier', 'light', 2),
    ('FR 1080p Compact Bluray Tier 1', 'light', 1),
    ('FR 1080p Compact Bluray Tier 2', 'light', 2),
    ('FR 1080p Compact WEB Tier 1', 'light', 1),
    ('FR 1080p Compact WEB Tier 2', 'light', 2),
    ('FR 2160p Compact Bluray Tier 1', 'light', 1),
    ('FR 2160p Compact Bluray Tier 2', 'light', 2),
    ('FR 2160p Compact WEB Tier 1', 'light', 1),
    ('FR 2160p Compact WEB Tier 2', 'light', 2),
    ('FR Anime Tier 01', 'anime', 1),
    ('FR Anime Tier 02', 'anime', 2),
    ('FR Anime Tier 03', 'anime', 3),
    ('FR Global Tier 01', 'global', 1),
    ('FR Global Tier 02', 'global', 2),
    ('FR DVD Tier 1', 'dvd', 1),
    ('FR Unknown Tier 1', 'unknown', 4),
    ('FR Scene Tier', 'scene', 4)
), raw_evidence AS (
  SELECT cp.regular_expression_name AS regex_name,
         evidence_map.category,
         evidence_map.tier
  FROM evidence_map
  JOIN custom_format_conditions cfc
    ON cfc.custom_format_name = evidence_map.custom_format_name
   AND cfc.type = 'release_group'
  JOIN condition_patterns cp
    ON cp.custom_format_name = cfc.custom_format_name
   AND cp.condition_name = cfc.name
), category_best AS (
  SELECT regex_name, category, MIN(tier) AS tier
  FROM raw_evidence
  GROUP BY regex_name, category
)
INSERT OR REPLACE INTO fr_team_evidence (regex_name, category, tier)
SELECT regex_name, category, tier
FROM category_best;

DROP TABLE IF EXISTS temp.fr_lq_team_regexes;
CREATE TEMP TABLE fr_lq_team_regexes AS
SELECT DISTINCT cp.regular_expression_name AS regex_name
FROM condition_patterns cp
JOIN custom_format_conditions cfc
  ON cfc.custom_format_name = cp.custom_format_name
 AND cfc.name = cp.condition_name
WHERE cp.custom_format_name = 'FR LQ'
  AND cfc.type = 'release_group';

DROP TABLE IF EXISTS temp.fr_unified_team_ranks;
CREATE TEMP TABLE fr_unified_team_ranks AS
WITH french_groups AS (
  SELECT re.name AS regex_name
  FROM regular_expressions re
  WHERE EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name
      AND ret.tag_name = 'French'
  )
    AND EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = re.name
        AND ret.tag_name = 'Release Group'
    )
), averaged AS (
  -- SQLite truncates a positive average when CAST to INTEGER: 1.5 becomes 1,
  -- which rounds ties toward the stronger tier as requested.
  SELECT regex_name, CAST(AVG(tier) AS INTEGER) AS tier
  FROM fr_team_evidence
  GROUP BY regex_name
)
SELECT french_groups.regex_name,
       COALESCE(averaged.tier, 4) AS tier
FROM french_groups
LEFT JOIN averaged ON averaged.regex_name = french_groups.regex_name
WHERE NOT EXISTS (
    SELECT 1 FROM fr_lq_team_regexes lq
    WHERE lq.regex_name = french_groups.regex_name
  )
  AND NOT EXISTS (
    SELECT 1 FROM fr_special_team_regexes special
    WHERE special.regex_name = french_groups.regex_name
  );

-- Manually reviewed groups whose output quality warrants Tier 3 even though
-- their historical evidence only placed them in Scene or unranked lists.
UPDATE fr_unified_team_ranks
SET tier = 3
WHERE regex_name IN (
  'addicted2u',
  'AgoraQc',
  'AKS',
  'AMB3R',
  'Anime-DL',
  'AnimesForAll',
  'ANTHEM',
  'AvALoN',
  'Blap',
  'BTT',
  'BY_ORDER',
  'CaptQC',
  'CUSThOMe',
  'DELiRiUS',
  'EICHBAUM MUSIC',
  'FWDHD',
  'GL0P',
  'H4KIG',
  'HazzAnim',
  'HiggsBoson',
  'HYPERION',
  'KTH',
  'LPP',
  'LOST',
  'LUCKY',
  'MiniPousses',
  'MiTOU',
  'NODA',
  'NYX',
  'RAPTOR',
  'REBiRTH',
  'SHADOW',
  'SESKAPiLE',
  'ZiGZaG'
);

WITH tier(name, description) AS (
  VALUES
    ('FR Team Tier 1', 'Matches the most trusted French release groups, independently of source or media type.'),
    ('FR Team Tier 2', 'Matches very good French release groups, independently of source or media type.'),
    ('FR Team Tier 3', 'Matches reliable French release groups, independently of source or media type.'),
    ('FR Team Tier 4', 'Matches known but unranked French release groups, independently of source or media type.')
)
INSERT INTO custom_formats (name, description)
SELECT name, description FROM tier
WHERE 1
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

WITH tier(custom_format_name) AS (
  VALUES
    ('FR Team Tier 1'),
    ('FR Team Tier 2'),
    ('FR Team Tier 3'),
    ('FR Team Tier 4')
), tag(tag_name) AS (
  VALUES ('French'), ('Release Group'), ('Release Group Tier')
)
INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT tier.custom_format_name, tag.tag_name
FROM tier CROSS JOIN tag;

INSERT OR IGNORE INTO custom_format_conditions (
  custom_format_name, name, type, arr_type, negate, required
)
SELECT 'FR Team Tier ' || tier, regex_name, 'release_group', 'all', 0, 0
FROM fr_unified_team_ranks;

INSERT OR IGNORE INTO condition_patterns (
  custom_format_name, condition_name, regular_expression_name
)
SELECT 'FR Team Tier ' || tier, regex_name, regex_name
FROM fr_unified_team_ranks;

-- Remove specialist Anime teams from the MULTi+Team proof path. They remain
-- trusted by MultiSub+Team, while explicit French MULTi markers still work.
DROP TABLE IF EXISTS temp.fr_multi_intl_special_conditions;
CREATE TEMP TABLE fr_multi_intl_special_conditions AS
SELECT cp.condition_name
FROM condition_patterns cp
WHERE cp.custom_format_name = 'French MULTi + Team FR (INTL)'
  AND cp.regular_expression_name IN (
    SELECT regex_name FROM fr_special_team_regexes
  );

DELETE FROM condition_patterns
WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
  AND condition_name IN (
    SELECT condition_name FROM fr_multi_intl_special_conditions
  );

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'French MULTi + Team FR (INTL)'
  AND name IN (
    SELECT condition_name FROM fr_multi_intl_special_conditions
  );

UPDATE regular_expressions
SET pattern = (
  SELECT '(?=.*(?:' || marker.pattern || '))(?=.*(?:' || group_concat('(?:' || team.pattern || ')', '|') || ')).*'
  FROM regular_expressions marker
  JOIN regular_expressions team
  WHERE marker.name = 'French MULTi'
    AND EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'French'
    )
    AND EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'Release Group'
    )
    AND NOT EXISTS (
      SELECT 1 FROM fr_special_team_regexes special
      WHERE special.regex_name = team.name
    )
)
WHERE name = 'French MULTi + Team FR Marker (INTL)';

UPDATE regular_expressions
SET pattern = (
  SELECT '(?=.*(?:' || marker.pattern || '))(?=.*(?:' || group_concat('(?:' || team.pattern || ')', '|') || ')).*'
  FROM regular_expressions marker
  JOIN regular_expressions team
  WHERE marker.name = 'French MultiSub (INTL)'
    AND EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'French'
    )
    AND EXISTS (
      SELECT 1 FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'Release Group'
    )
)
WHERE name = 'French MultiSub + Team FR Marker (INTL)';

-- Keep only the four generic tiers and the two exclusive Anime specialist
-- categories in profile scoring. Language and technical CFs are untouched.
DROP TABLE IF EXISTS temp.fr_old_team_tier_cfs;
CREATE TEMP TABLE fr_old_team_tier_cfs AS
SELECT DISTINCT cf.name
FROM custom_formats cf
WHERE cf.name NOT IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4',
    'FR Anime SubFr',
    'FR Anime FanSub',
    'FR LQ'
  )
  AND (
    EXISTS (
      SELECT 1 FROM custom_format_tags cft
      WHERE cft.custom_format_name = cf.name
        AND cft.tag_name = 'Release Group Tier'
    )
    OR cf.name = 'FR Scene Tier'
    OR cf.name LIKE 'FR % Tier %'
    OR cf.name LIKE 'FR % Tier'
  );

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN (
  SELECT name FROM fr_old_team_tier_cfs
);

DELETE FROM custom_formats
WHERE name IN (
  SELECT name FROM fr_old_team_tier_cfs
);

-- Any remaining technical CF that used positive or negated team conditions is
-- converted to its team-free equivalent by removing only release-group checks.
DROP TABLE IF EXISTS temp.fr_non_tier_team_conditions;
CREATE TEMP TABLE fr_non_tier_team_conditions AS
SELECT cfc.custom_format_name, cfc.name AS condition_name
FROM custom_format_conditions cfc
WHERE cfc.type = 'release_group'
  AND cfc.custom_format_name NOT IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4',
    'FR Anime SubFr',
    'FR Anime FanSub',
    'FR LQ',
    'French MULTi + Team FR (INTL)',
    'French MultiSub + Team FR (INTL)'
  );

DROP TABLE IF EXISTS temp.fr_team_condition_affected_cfs;
CREATE TEMP TABLE fr_team_condition_affected_cfs AS
SELECT DISTINCT custom_format_name
FROM fr_non_tier_team_conditions;

DELETE FROM condition_patterns
WHERE EXISTS (
  SELECT 1 FROM fr_non_tier_team_conditions doomed
  WHERE doomed.custom_format_name = condition_patterns.custom_format_name
    AND doomed.condition_name = condition_patterns.condition_name
);

DELETE FROM custom_format_conditions
WHERE EXISTS (
  SELECT 1 FROM fr_non_tier_team_conditions doomed
  WHERE doomed.custom_format_name = custom_format_conditions.custom_format_name
    AND doomed.condition_name = custom_format_conditions.name
);

-- A CF made solely of a team list has no useful team-free equivalent.
DELETE FROM custom_formats
WHERE name IN (
    SELECT custom_format_name FROM fr_team_condition_affected_cfs
  )
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = custom_formats.name
  );

WITH target_profile(name) AS (
  VALUES
    ('720p Quality FR'),
    ('1080p Balanced FR'),
    ('1080p Compact FR'),
    ('1080p Efficient FR'),
    ('1080p Quality FR'),
    ('1080p Quality HDR FR'),
    ('1080p Remux FR'),
    ('2160p Balanced FR'),
    ('2160p Compact FR'),
    ('2160p Efficient FR'),
    ('2160p Quality FR'),
    ('2160p Remux FR'),
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
), tier(custom_format_name, score) AS (
  VALUES
    ('FR Team Tier 1', 10000),
    ('FR Team Tier 2', 8000),
    ('FR Team Tier 3', 6000),
    ('FR Team Tier 4', 4000)
)
INSERT OR IGNORE INTO quality_profile_custom_formats (
  quality_profile_name, custom_format_name, arr_type, score
)
SELECT target_profile.name, tier.custom_format_name, 'all', tier.score
FROM target_profile CROSS JOIN tier
WHERE EXISTS (
  SELECT 1 FROM quality_profiles qp
  WHERE qp.name = target_profile.name
);

WITH anime_profile(name) AS (
  VALUES
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
), specialist(custom_format_name) AS (
  VALUES
    ('FR Anime SubFr'),
    ('FR Anime FanSub')
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name, custom_format_name, arr_type, score
)
SELECT anime_profile.name, specialist.custom_format_name, 'all', 6000
FROM anime_profile CROSS JOIN specialist
WHERE EXISTS (
  SELECT 1 FROM quality_profiles qp
  WHERE qp.name = anime_profile.name
)
ON CONFLICT(quality_profile_name, custom_format_name, arr_type)
DO UPDATE SET score = excluded.score;

DROP TABLE IF EXISTS temp.fr_team_condition_affected_cfs;
DROP TABLE IF EXISTS temp.fr_non_tier_team_conditions;
DROP TABLE IF EXISTS temp.fr_old_team_tier_cfs;
DROP TABLE IF EXISTS temp.fr_multi_intl_special_conditions;
DROP TABLE IF EXISTS temp.fr_unified_team_ranks;
DROP TABLE IF EXISTS temp.fr_lq_team_regexes;
DROP TABLE IF EXISTS temp.fr_team_evidence;
DROP TABLE IF EXISTS temp.fr_special_team_regexes;
