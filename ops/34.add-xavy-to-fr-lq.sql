-- @operation: export
-- @entity: batch
-- @name: Add Xavy to French low-quality groups
-- @exportedAt: 2026-11-02T00:00:00.000Z

-- Xavy publishes releases advertised as 1080p that can contain SD/480p video.
-- Keep the group out of every positive tier and ban it through FR LQ.
INSERT INTO regular_expressions (name, pattern, description)
VALUES (
  'Xavy',
  '(?i)(?<=^|[\s._-])Xavy(?=$|[\s._-])',
  'Matches the Xavy release group.'
)
ON CONFLICT(name) DO UPDATE SET
  pattern = excluded.pattern,
  description = excluded.description;

WITH wanted_tag(tag_name) AS (
  VALUES ('French'), ('Release Group')
)
INSERT OR IGNORE INTO regular_expression_tags (
  regular_expression_name,
  tag_name
)
SELECT 'Xavy', wanted_tag.tag_name
FROM wanted_tag;

DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4'
  )
  AND regular_expression_name = 'Xavy';

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4'
  )
  AND name = 'Xavy';

INSERT OR IGNORE INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'FR LQ', 'Xavy', 'release_group', 'all', 0, 0
WHERE EXISTS (
  SELECT 1
  FROM custom_formats cf
  WHERE cf.name = 'FR LQ'
);

INSERT OR IGNORE INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT 'FR LQ', 'Xavy', 'Xavy'
WHERE EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = 'FR LQ'
    AND cfc.name = 'Xavy'
);

-- Generic French groups remain valid evidence for the international MULTi and
-- MultiSub paths. FR LQ still bans Xavy in every published profile.
WITH target(custom_format_name) AS (
  VALUES
    ('French MULTi + Team FR (INTL)'),
    ('French MultiSub + Team FR (INTL)')
)
INSERT OR IGNORE INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT target.custom_format_name, 'Xavy', 'release_group', 'all', 0, 0
FROM target
WHERE EXISTS (
  SELECT 1
  FROM custom_formats cf
  WHERE cf.name = target.custom_format_name
);

WITH target(custom_format_name) AS (
  VALUES
    ('French MULTi + Team FR (INTL)'),
    ('French MultiSub + Team FR (INTL)')
)
INSERT OR IGNORE INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT target.custom_format_name, 'Xavy', 'Xavy'
FROM target
WHERE EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = target.custom_format_name
    AND cfc.name = 'Xavy'
);

-- French Missing (INTL) references these aggregate marker regexes.
UPDATE regular_expressions
SET pattern = (
  SELECT '(?=.*(?:' || marker.pattern || '))(?=.*(?:' || group_concat('(?:' || team.pattern || ')', '|') || ')).*'
  FROM regular_expressions marker
  JOIN regular_expressions team
  WHERE marker.name = 'French MULTi'
    AND EXISTS (
      SELECT 1
      FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'French'
    )
    AND EXISTS (
      SELECT 1
      FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'Release Group'
    )
    AND NOT EXISTS (
      SELECT 1
      FROM condition_patterns cp
      WHERE cp.regular_expression_name = team.name
        AND cp.custom_format_name IN ('FR Anime SubFr', 'FR Anime FanSub')
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
      SELECT 1
      FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'French'
    )
    AND EXISTS (
      SELECT 1
      FROM regular_expression_tags ret
      WHERE ret.regular_expression_name = team.name
        AND ret.tag_name = 'Release Group'
    )
)
WHERE name = 'French MultiSub + Team FR Marker (INTL)';
