-- @operation: export
-- @entity: batch
-- @name: Prevent AVC and HEVC source double scoring
-- @exportedAt: 2026-10-21T00:00:00.000Z
-- @opIds: 9030

-- --- BEGIN op 9030 ( batch Prevent AVC and HEVC source double scoring )
-- HEVC source passes must not also match an explicit AVC/x264/H.264 marker.
WITH target(custom_format_name) AS (
  VALUES
    ('1080p Bluray HEVC'),
    ('1080p WEB-DL HEVC'),
    ('2160p Bluray HEVC'),
    ('2160p WEB-DL HEVC')
)
INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT target.custom_format_name, 'Not AVC', 'release_title', 'all', 1, 1
FROM target
WHERE EXISTS (
    SELECT 1
    FROM custom_formats cf
    WHERE cf.name = target.custom_format_name
  )
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = target.custom_format_name
      AND cfc.name = 'Not AVC'
  );

WITH target(custom_format_name) AS (
  VALUES
    ('1080p Bluray HEVC'),
    ('1080p WEB-DL HEVC'),
    ('2160p Bluray HEVC'),
    ('2160p WEB-DL HEVC')
)
INSERT INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT target.custom_format_name, 'Not AVC', 'AVC'
FROM target
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = target.custom_format_name
      AND cfc.name = 'Not AVC'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_patterns cp
    WHERE cp.custom_format_name = target.custom_format_name
      AND cp.condition_name = 'Not AVC'
  );

-- --- END op 9030
