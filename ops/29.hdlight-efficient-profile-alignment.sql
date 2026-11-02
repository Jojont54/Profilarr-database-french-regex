-- @operation: export
-- @entity: batch
-- @name: HDLight and Efficient profile alignment
-- @exportedAt: 2026-09-15T00:00:00.000Z
-- @opIds: 9029

-- --- BEGIN op 9029 ( batch HDLight and Efficient profile alignment )
-- Keep AVC/HEVC Bluray fallbacks exclusive from HDLight encodes.
WITH target(custom_format_name) AS (
  VALUES
    ('1080p Bluray HEVC'),
    ('1080p Bluray AVC')
)
INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT target.custom_format_name, 'Not HDLight', 'release_title', 'all', 1, 1
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
      AND cfc.name = 'Not HDLight'
  );

WITH target(custom_format_name) AS (
  VALUES
    ('1080p Bluray HEVC'),
    ('1080p Bluray AVC')
)
INSERT INTO condition_patterns (
  custom_format_name,
  condition_name,
  regular_expression_name
)
SELECT target.custom_format_name, 'Not HDLight', 'HDLight'
FROM target
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions cfc
    WHERE cfc.custom_format_name = target.custom_format_name
      AND cfc.name = 'Not HDLight'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_patterns cp
    WHERE cp.custom_format_name = target.custom_format_name
      AND cp.condition_name = 'Not HDLight'
  );

-- Normalize the requested profile mappings to one shared Radarr/Sonarr row.
DELETE FROM quality_profile_custom_formats
WHERE (quality_profile_name = '1080p Compact FR'
    AND custom_format_name = '1080p Bluray HEVC')
   OR (quality_profile_name = '1080p Efficient FR'
    AND custom_format_name IN ('1080p HDLight Bluray', '1080p HDLight WEBRip'));

INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
VALUES
  ('1080p Compact FR', '1080p Bluray HEVC', 'all', 890000),
  ('1080p Efficient FR', '1080p HDLight Bluray', 'all', 940000),
  ('1080p Efficient FR', '1080p HDLight WEBRip', 'all', 930000);

-- Migrate existing Stable installations that imported the previous 710000 score.
UPDATE quality_profile_custom_formats
SET score = 860000
WHERE quality_profile_name = '1080p Balanced FR'
  AND custom_format_name = '1080p WEB-DL';

-- Align existing soft HDLight penalties while preserving strict bans.
UPDATE quality_profile_custom_formats
SET score = -60000
WHERE custom_format_name = 'HDLight'
  AND score <> -999999;

-- --- END op 9029
