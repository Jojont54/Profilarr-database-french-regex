-- @operation: export
-- @entity: batch
-- @name: dictionarry v2 score alignment
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9006

-- --- BEGIN op 9006 ( batch dictionarry v2 score alignment )
-- ============================================================================
-- Dictionarry V2 score alignment for FR profiles
-- Keeps the FR language layer, but aligns the technical and tier scores with
-- the final Dictionarry V2 score model.
-- ============================================================================

-- Keep the h264 source CF under an explicit codec-oriented name.
UPDATE custom_formats
SET name = '1080p WEB-DL AVC'
WHERE name = '1080p WEB-DL (h264)';

UPDATE custom_format_conditions
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

UPDATE condition_sources
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

UPDATE condition_resolutions
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

UPDATE condition_patterns
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

UPDATE custom_format_tags
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

UPDATE quality_profile_custom_formats
SET custom_format_name = '1080p WEB-DL AVC'
WHERE custom_format_name = '1080p WEB-DL (h264)';

-- Keep the 2160p h264 source CF under an explicit codec-oriented name.
INSERT INTO custom_formats (name, description)
VALUES ('2160p WEB-DL AVC', 'Matches 2160p AVC WEB-DLs.');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL AVC', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p WEB-DL AVC', '2160p', '2160p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL AVC', 'WEB-DL', 'source', 'all', 0, 1);

INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('2160p WEB-DL AVC', 'WEB-DL', 'web_dl');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
VALUES ('2160p WEB-DL AVC', 'Source');

-- 2160p Balanced: the high-trust Bluray tier is a small validated HEVC group
-- list. Generic and high-trust WEB-DL scoring are handled by separate source
-- CFs.

-- Replace earlier FR conversion scores with Dictionarry V2-aligned rows.
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced FR'
  AND custom_format_name IN ('FR 2160p Balanced Tier 1', 'FR 2160p Balanced Bluray Tier 1', 'FR 2160p Balanced Tier 2');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('2160p Balanced FR', 'FR 2160p Balanced Bluray Tier 1', 'all', 921000);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('1080p Efficient FR', '2160p Efficient FR')
  AND custom_format_name = '1080p WEB-DL AVC';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Efficient FR', '1080p WEB-DL AVC', 'radarr', 860000),
  ('1080p Efficient FR', '1080p WEB-DL AVC', 'sonarr', 860000),
  ('2160p Efficient FR', '1080p WEB-DL AVC', 'radarr', 860000),
  ('2160p Efficient FR', '1080p WEB-DL AVC', 'sonarr', 860000);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient FR'
  AND custom_format_name = '2160p WEB-DL';

-- UHD Bluray x265 uses a negative counterweight in Dictionarry V2 so blessed
-- groups do not also inherit the full technical UHD Bluray score.
UPDATE quality_profile_custom_formats
SET score = -820000
WHERE quality_profile_name IN (
    '1080p Quality HDR FR',
    '1080p Remux FR',
    '2160p Balanced FR',
    '2160p Quality FR',
    '2160p Remux FR'
  )
  AND custom_format_name = 'x265 (Bluray)';

-- French release-group tiers above 600k are composite quality passes. They must
-- only match HEVC releases so h264 from the same groups falls back to normal
-- technical/source scoring instead of receiving a blessed-tier score.
WITH high_score_fr_tier(custom_format_name) AS (
  SELECT DISTINCT custom_format_name
  FROM quality_profile_custom_formats
  WHERE score > 600000
    AND custom_format_name LIKE 'FR %Tier%'
)
DELETE FROM custom_format_conditions
WHERE name = 'x265'
  AND custom_format_name IN (SELECT custom_format_name FROM high_score_fr_tier);

WITH high_score_fr_tier(custom_format_name) AS (
  SELECT DISTINCT custom_format_name
  FROM quality_profile_custom_formats
  WHERE score > 600000
    AND custom_format_name LIKE 'FR %Tier%'
)
DELETE FROM condition_patterns
WHERE condition_name = 'x265'
  AND custom_format_name IN (SELECT custom_format_name FROM high_score_fr_tier);

WITH high_score_fr_tier(custom_format_name) AS (
  SELECT DISTINCT custom_format_name
  FROM quality_profile_custom_formats
  WHERE score > 600000
    AND custom_format_name LIKE 'FR %Tier%'
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'HEVC', 'release_title', 'all', 0, 1
FROM high_score_fr_tier
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = high_score_fr_tier.custom_format_name
    AND cfc.name = 'HEVC'
);

WITH high_score_fr_tier(custom_format_name) AS (
  SELECT DISTINCT custom_format_name
  FROM quality_profile_custom_formats
  WHERE score > 600000
    AND custom_format_name LIKE 'FR %Tier%'
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, 'HEVC', 'HEVC'
FROM high_score_fr_tier
WHERE NOT EXISTS (
  SELECT 1
  FROM condition_patterns cp
  WHERE cp.custom_format_name = high_score_fr_tier.custom_format_name
    AND cp.condition_name = 'HEVC'
    AND cp.regular_expression_name = 'HEVC'
);
-- --- END op 9006
