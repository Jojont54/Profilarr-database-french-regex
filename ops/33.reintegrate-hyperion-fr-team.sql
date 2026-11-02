-- @operation: export
-- @entity: batch
-- @name: Reintegrate HYPERION French video group
-- @exportedAt: 2026-10-21T00:00:00.000Z

-- HYPERION is also used outside video releases, but the French video group
-- publishes Remux and WEB releases under HYPERION or HYPERION.FRENCH.
UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HYPERION(?:[ ._-]?FRENCH)?(?=$|[\s._-])',
    description = 'Matches the French video release group HYPERION, including HYPERION.FRENCH.'
WHERE name = 'HYPERION';

WITH wanted_tag(tag_name) AS (
  VALUES ('French'), ('Release Group')
)
INSERT OR IGNORE INTO regular_expression_tags (
  regular_expression_name,
  tag_name
)
SELECT 'HYPERION', wanted_tag.tag_name
FROM wanted_tag
WHERE EXISTS (
  SELECT 1
  FROM regular_expressions re
  WHERE re.name = 'HYPERION'
);

-- HYPERION was previously classified as Tier 3. Keep one generic team tier
-- only, then promote the French video group to Tier 2.
DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4'
  )
  AND regular_expression_name = 'HYPERION';

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR Team Tier 1',
    'FR Team Tier 2',
    'FR Team Tier 3',
    'FR Team Tier 4'
  )
  AND name = 'HYPERION';

INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'FR Team Tier 2', 'HYPERION', 'release_group', 'all', 0, 0
WHERE EXISTS (
  SELECT 1
  FROM custom_formats cf
  WHERE cf.name = 'FR Team Tier 2'
);

INSERT INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT 'FR Team Tier 2', 'HYPERION', 'HYPERION'
WHERE EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = 'FR Team Tier 2'
    AND cfc.name = 'HYPERION'
);

-- Generic French teams are also valid evidence for the INTL MULTi and
-- MultiSub paths. These inserts are harmless when the old disabled HYPERION
-- condition is already present.
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
SELECT target.custom_format_name, 'HYPERION', 'release_group', 'all', 0, 0
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
SELECT target.custom_format_name, 'HYPERION', 'HYPERION'
FROM target
WHERE EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = target.custom_format_name
    AND cfc.name = 'HYPERION'
);

-- French Missing (INTL) references these aggregate marker regexes, so rebuild
-- them after restoring HYPERION's real pattern.
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
