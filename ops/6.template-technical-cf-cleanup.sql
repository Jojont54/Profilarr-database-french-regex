-- @operation: export
-- @entity: batch
-- @name: template technical cf cleanup
-- @exportedAt: 2026-05-30T00:00:00.000Z
-- @opIds: 9006

-- --- BEGIN op 9006 ( batch template technical cf cleanup )
-- ============================================================================
-- Template technical custom format cleanup
--
-- Keep technical signals atomic for the template:
-- - source CFs detect source only;
-- - codec CFs detect codec only;
-- - source+codec+resolution combinations are left to user profiles.
-- ============================================================================

-- Generic technical regexes used by the template CFs below.
INSERT INTO regular_expressions (name, pattern, description)
SELECT 'Bluray', '\b(?:Blu[-_. ]?Ray|BD)\b', 'Matches generic BluRay / Bluray / BD markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'Bluray');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'WEB-DL', '\bWEB[-_. ]?DL\b|\bWEBDL\b|\bWEB\b', 'Matches WEB-DL, WEBDL, and plain WEB markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'WEB-DL');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'WEBRip', '\bWEB[-_. ]?Rip\b|\bWEBRip\b', 'Matches WEBRip markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'WEBRip');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'BDRip / BRRip', '\b(?:BD|BR)[-_. ]?Rip\b|\bBlu[-_. ]?Ray[-_. ]?Rip\b', 'Matches BDRip, BRRip and BluRay Rip markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'BDRip / BRRip');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'Rip', '\bRip\b', 'Matches generic Rip markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'Rip');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('Bluray', 'WEB-DL', 'WEBRip', 'BDRip / BRRip', 'Rip', 'HDTV')
  AND t.name = 'Source'
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('AV1', 'AVC', 'HEVC', 'h265', 'x264', 'x265')
  AND t.name = 'Codec'
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

-- Generic source CFs. These are independent from resolution-specific CFs such
-- as 1080p WEB-DL or 720p Bluray.
INSERT INTO custom_formats (name, description)
SELECT 'Bluray', 'Matches generic Bluray source markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Bluray');

INSERT INTO custom_formats (name, description)
SELECT 'WEB-DL', 'Matches generic WEB-DL source markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'WEB-DL');

INSERT INTO custom_formats (name, description)
SELECT 'WEBRip', 'Matches generic WEBRip source markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'WEBRip');

INSERT INTO custom_formats (name, description)
SELECT 'BDRip / BRRip', 'Matches BDRip, BRRip and BluRay Rip source markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'BDRip / BRRip');

INSERT INTO custom_formats (name, description)
SELECT 'Rip', 'Matches generic Rip markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Rip');

INSERT INTO custom_formats (name, description)
SELECT 'HDTV', 'Matches HDTV source markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'HDTV');

INSERT INTO custom_formats (name, description)
SELECT 'h264', 'Matches H.264 / x264 / AVC codec markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'h264');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('Bluray', 'WEB-DL', 'WEBRip', 'BDRip / BRRip', 'Rip', 'HDTV')
  AND t.name = 'Source'
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('AV1', 'h264', 'h265', 'x265')
  AND t.name IN ('Codec', 'Encoder')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Bluray', 'Bluray', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Bluray' AND name = 'Bluray');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Bluray', 'Bluray', 'Bluray'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'Bluray' AND condition_name = 'Bluray' AND regular_expression_name = 'Bluray');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'WEB-DL', 'WEB-DL', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'WEB-DL' AND name = 'WEB-DL');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'WEB-DL', 'WEB-DL', 'WEB-DL'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'WEB-DL' AND condition_name = 'WEB-DL' AND regular_expression_name = 'WEB-DL');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'WEBRip', 'WEBRip', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'WEBRip' AND name = 'WEBRip');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'WEBRip', 'WEBRip', 'WEBRip'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'WEBRip' AND condition_name = 'WEBRip' AND regular_expression_name = 'WEBRip');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'BDRip / BRRip', 'BDRip / BRRip', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'BDRip / BRRip' AND name = 'BDRip / BRRip');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'BDRip / BRRip', 'BDRip / BRRip', 'BDRip / BRRip'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'BDRip / BRRip' AND condition_name = 'BDRip / BRRip' AND regular_expression_name = 'BDRip / BRRip');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Rip', 'Rip', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'Rip' AND name = 'Rip');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Rip', 'Rip', 'Rip'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'Rip' AND condition_name = 'Rip' AND regular_expression_name = 'Rip');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'HDTV', 'HDTV', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'HDTV' AND name = 'HDTV');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HDTV', 'HDTV', 'HDTV'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'HDTV' AND condition_name = 'HDTV' AND regular_expression_name = 'HDTV');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'h264', 'h264', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (SELECT 1 FROM custom_format_conditions WHERE custom_format_name = 'h264' AND name = 'h264');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'h264', 'h264', 'AVC'
WHERE NOT EXISTS (SELECT 1 FROM condition_patterns WHERE custom_format_name = 'h264' AND condition_name = 'h264' AND regular_expression_name = 'AVC');

-- Template cleanup: remove profile-specific composite CFs and neutralizers.
DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM condition_patterns
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM condition_sources
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM condition_resolutions
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM condition_languages
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM custom_format_conditions
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM custom_format_tags
WHERE custom_format_name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM custom_formats
WHERE name IN ('1080p Bluray (Efficient)', '1080p WEB-DL (h264)', 'h265 (Efficient)', 'HDR (Missing)', 'UHD Bluray (Efficient)', 'x264 (2160p)', 'x265 (Bluray)', 'x265 (Efficient)', 'x265 (Missing)', 'x265 (Remux)', 'x265 (WEB)');

DELETE FROM condition_patterns
WHERE regular_expression_name = 'UHD Bluray (Efficient)';

DELETE FROM regular_expression_tags
WHERE regular_expression_name = 'UHD Bluray (Efficient)';

DELETE FROM regular_expressions
WHERE name = 'UHD Bluray (Efficient)';
-- --- END op 9006
