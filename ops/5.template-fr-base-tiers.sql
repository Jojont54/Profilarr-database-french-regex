-- @operation: export
-- @entity: batch
-- @name: template fr base tiers
-- @exportedAt: 2026-05-30T00:00:00.000Z
-- @opIds: 9005

-- --- BEGIN op 9005 ( batch template fr base tiers )
-- ============================================================================
-- Template FR base tiers
--
-- This branch keeps release-group confidence separate from technical quality.
-- Media tiers intentionally do not encode source, resolution, codec, remux, or
-- light-encode rules: users can score those technical custom formats themselves.
-- ============================================================================

INSERT INTO custom_formats (name, description)
VALUES
  ('FR Media Tier 1', 'Template tier for the most trusted French movie and TV release groups. Technical source, codec, and resolution scoring is handled by separate custom formats.'),
  ('FR Media Tier 2', 'Template tier for trusted French movie and TV release groups. Technical source, codec, and resolution scoring is handled by separate custom formats.'),
  ('FR Media Tier 3', 'Template tier for known French movie and TV release groups without a stronger quality ranking. Technical source, codec, and resolution scoring is handled by separate custom formats.'),
  ('FR Anime Tier 1', 'Template tier for the most trusted French anime release groups.'),
  ('FR Anime Tier 2', 'Template tier for trusted French anime release groups.'),
  ('FR Anime Tier 3', 'Template tier for known French anime release groups without a stronger quality ranking.'),
  ('FR Scene Unranked', 'Known French scene or historical release groups kept unranked by default.'),
  ('FR Low Quality / Banned', 'French low-quality or banned release groups.'),
  ('HDLight', 'Matches HDLight and similar light/re-encode markers below 2160p.'),
  ('4KLight', 'Matches 4KLight and similar light/re-encode markers on 2160p releases.');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('FR Media Tier 1', 'FR Media Tier 2', 'FR Media Tier 3', 'FR Scene Unranked')
  AND t.name IN ('French', 'Release Group Tier');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('FR Anime Tier 1', 'FR Anime Tier 2', 'FR Anime Tier 3')
  AND t.name IN ('Anime', 'French', 'Release Group Tier');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Low Quality / Banned'
  AND t.name IN ('Banned', 'French', 'Release Group Tier');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('HDLight', '4KLight')
  AND t.name IN ('Banned', 'Source');

-- Keep only release-group/title conditions in the template tiers. Source,
-- resolution, codec, remux, and HDR are intentionally left to technical CFs.
WITH template_tier_map(old_name, new_name) AS (
  VALUES
    ('FR Global Tier 01', 'FR Media Tier 1'),
    ('FR Movie HD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR Movie Remux Tier 01', 'FR Media Tier 1'),
    ('FR Movie UHD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR Movie WEB Tier 01', 'FR Media Tier 1'),
    ('FR TV HD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR TV Remux Tier 01', 'FR Media Tier 1'),
    ('FR TV WEB Tier 01', 'FR Media Tier 1'),
    ('FR Global Tier 02', 'FR Media Tier 2'),
    ('FR Movie HD Bluray Tier 02', 'FR Media Tier 2'),
    ('FR Movie Remux Tier 02', 'FR Media Tier 2'),
    ('FR Movie UHD Bluray Tier 02', 'FR Media Tier 2'),
    ('FR Movie WEB Tier 02', 'FR Media Tier 2'),
    ('FR TV WEB Tier 02', 'FR Media Tier 2'),
    ('FR HDLight Tier', 'FR Media Tier 3'),
    ('FR TV WEB Tier 03', 'FR Media Tier 3'),
    ('FR Anime Tier 01', 'FR Anime Tier 1'),
    ('FR Anime Tier 02', 'FR Anime Tier 2'),
    ('FR Anime Tier 03', 'FR Anime Tier 3'),
    ('FR Scene Groups', 'FR Scene Unranked'),
    ('FR LQ', 'FR Low Quality / Banned')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT DISTINCT m.new_name, c.name, c.type, c.arr_type, c.negate, c.required
FROM template_tier_map m
JOIN custom_format_conditions c ON c.custom_format_name = m.old_name
WHERE c.negate = 0
  AND c.type IN ('release_group', 'release_title')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions existing
    WHERE existing.custom_format_name = m.new_name
      AND existing.name = c.name
  );

WITH template_tier_map(old_name, new_name) AS (
  VALUES
    ('FR Global Tier 01', 'FR Media Tier 1'),
    ('FR Movie HD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR Movie Remux Tier 01', 'FR Media Tier 1'),
    ('FR Movie UHD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR Movie WEB Tier 01', 'FR Media Tier 1'),
    ('FR TV HD Bluray Tier 01', 'FR Media Tier 1'),
    ('FR TV Remux Tier 01', 'FR Media Tier 1'),
    ('FR TV WEB Tier 01', 'FR Media Tier 1'),
    ('FR Global Tier 02', 'FR Media Tier 2'),
    ('FR Movie HD Bluray Tier 02', 'FR Media Tier 2'),
    ('FR Movie Remux Tier 02', 'FR Media Tier 2'),
    ('FR Movie UHD Bluray Tier 02', 'FR Media Tier 2'),
    ('FR Movie WEB Tier 02', 'FR Media Tier 2'),
    ('FR TV WEB Tier 02', 'FR Media Tier 2'),
    ('FR HDLight Tier', 'FR Media Tier 3'),
    ('FR TV WEB Tier 03', 'FR Media Tier 3'),
    ('FR Anime Tier 01', 'FR Anime Tier 1'),
    ('FR Anime Tier 02', 'FR Anime Tier 2'),
    ('FR Anime Tier 03', 'FR Anime Tier 3'),
    ('FR Scene Groups', 'FR Scene Unranked'),
    ('FR LQ', 'FR Low Quality / Banned')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT DISTINCT m.new_name, p.condition_name, p.regular_expression_name
FROM template_tier_map m
JOIN condition_patterns p ON p.custom_format_name = m.old_name
JOIN custom_format_conditions c
  ON c.custom_format_name = m.new_name
 AND c.name = p.condition_name
WHERE NOT EXISTS (
  SELECT 1
  FROM condition_patterns existing
  WHERE existing.custom_format_name = m.new_name
    AND existing.condition_name = p.condition_name
    AND existing.regular_expression_name = p.regular_expression_name
);

-- TenmaLand was added after the initial anime tier import.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'FR Anime Tier 1', 'TenmaLand', 'release_title', 'all', 0, 0
WHERE EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'TenmaLand')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'FR Anime Tier 1' AND name = 'TenmaLand'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 1', 'TenmaLand', 'TenmaLand'
WHERE EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'FR Anime Tier 1' AND name = 'TenmaLand')
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'FR Anime Tier 1'
      AND condition_name = 'TenmaLand'
      AND regular_expression_name = 'TenmaLand'
  );

-- Light encode markers are technical CFs, not release-group tiers.
INSERT INTO regular_expressions (name, pattern, description)
VALUES
  ('HDLight', '(?<=^|[\s._-])(?:mHD|miniHD|microHD|HD[\s._-]?(?:Light|Lite)|Re[\s._-]?(?:Encode|Enc)|BD[\s._-]?(?:Light|Lite)|BR[\s._-]?(?:Light|Lite)|WEB[\s._-]?(?:Light|Lite))(?=$|[\s._-])', 'Matches HDLight, mHD, miniHD, microHD, ReEnc, ReEncode, BDLight, BRLight and WEBLight markers.'),
  ('4KLight', '(?<=^|[\s._-])(?:(?:4K|UHD)[\s._-]?Light|Re[\s._-]?(?:Encode|Enc)|BD[\s._-]?(?:Light|Lite)|BR[\s._-]?(?:Light|Lite)|WEB[\s._-]?(?:Light|Lite))(?=$|[\s._-])', 'Matches 4KLight, UHDLight, ReEnc, ReEncode, BDLight, BRLight and WEBLight markers.');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('HDLight', '4KLight')
  AND t.name IN ('Banned', 'Source');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES
  ('HDLight', 'HDLight', 'release_title', 'all', 0, 1),
  ('HDLight', 'Not 2160p', 'resolution', 'all', 1, 1),
  ('4KLight', '4KLight', 'release_title', 'all', 0, 1),
  ('4KLight', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES
  ('HDLight', 'HDLight', 'HDLight'),
  ('4KLight', '4KLight', '4KLight');

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES
  ('HDLight', 'Not 2160p', '2160p'),
  ('4KLight', '2160p', '2160p');

-- Remove the old detailed tiers after copying their group conditions.
DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM condition_patterns
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM condition_sources
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM condition_resolutions
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM custom_format_conditions
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM custom_format_tags
WHERE custom_format_name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');

DELETE FROM custom_formats
WHERE name IN ('FR Global Tier 01', 'FR Movie HD Bluray Tier 01', 'FR Movie Remux Tier 01', 'FR Movie UHD Bluray Tier 01', 'FR Movie WEB Tier 01', 'FR TV HD Bluray Tier 01', 'FR TV Remux Tier 01', 'FR TV WEB Tier 01', 'FR Global Tier 02', 'FR Movie HD Bluray Tier 02', 'FR Movie Remux Tier 02', 'FR Movie UHD Bluray Tier 02', 'FR Movie WEB Tier 02', 'FR TV WEB Tier 02', 'FR HDLight Tier', 'FR TV WEB Tier 03', 'FR Anime Tier 01', 'FR Anime Tier 02', 'FR Anime Tier 03', 'FR Scene Groups', 'FR LQ');
-- --- END op 9005
