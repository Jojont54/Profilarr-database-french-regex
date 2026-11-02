-- @operation: export
-- @entity: batch
-- @name: Add Dubbed language guard
-- @exportedAt: 2026-10-21T00:00:00.000Z
-- @opIds: 9031

-- --- BEGIN op 9031 ( batch Add Dubbed language guard )
-- Keep the marker atomic so it can be reused in other language CFs.
INSERT INTO regular_expressions (name, pattern, description)
SELECT
  'Dubbed',
  '(?i)(?:(?<=^|[\s._-])DUB(?:BED)?(?=$|[\s._-])|(?:\b[12]\d{3}\b|\bS\d+(?:E\d+)?\b).*?(?<=^|[\s._-])ENGLISH(?=$|[\s._-]))',
  'Matches standalone DUB or DUBBED markers, plus ENGLISH after a movie year or TV season/episode marker.'
WHERE NOT EXISTS (
  SELECT 1
  FROM regular_expressions
  WHERE name = 'Dubbed'
);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT 'Dubbed', 'Language'
WHERE EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'Dubbed')
  AND EXISTS (SELECT 1 FROM tags WHERE name = 'Language')
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags
    WHERE regular_expression_name = 'Dubbed'
      AND tag_name = 'Language'
  );

INSERT INTO custom_formats (name, description)
SELECT 'Dubbed', 'Identifie les releases explicitement marquees DUB, DUBBED ou ENGLISH apres une annee ou un marqueur de saison.'
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_formats
  WHERE name = 'Dubbed'
);

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Dubbed', 'Language'
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Dubbed')
  AND EXISTS (SELECT 1 FROM tags WHERE name = 'Language')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags
    WHERE custom_format_name = 'Dubbed'
      AND tag_name = 'Language'
  );

INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'Dubbed', 'Dubbed', 'release_title', 'all', 0, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Dubbed')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Dubbed'
      AND name = 'Dubbed'
  );

INSERT INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT 'Dubbed', 'Dubbed', 'Dubbed'
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Dubbed'
      AND name = 'Dubbed'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_patterns
    WHERE custom_format_name = 'Dubbed'
      AND condition_name = 'Dubbed'
  );

-- A dubbed release cannot be treated as French Original/VOF.
INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'French Original', 'Not Dubbed', 'release_title', 'all', 1, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'French Original')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'French Original'
      AND name = 'Not Dubbed'
  );

INSERT INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT 'French Original', 'Not Dubbed', 'Dubbed'
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'French Original'
      AND name = 'Not Dubbed'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_patterns
    WHERE custom_format_name = 'French Original'
      AND condition_name = 'Not Dubbed'
  );

-- --- END op 9031
