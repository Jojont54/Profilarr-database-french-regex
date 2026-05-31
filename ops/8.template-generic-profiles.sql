-- @operation: export
-- @entity: batch
-- @name: template generic profiles
-- @exportedAt: 2026-05-30T00:00:00.000Z
-- @opIds: 9008

-- --- BEGIN op 9008 ( batch template generic profiles )
-- ============================================================================
-- PCD 2.0 French Template - Generic grouped CFs and starter profiles
-- ============================================================================

-- Extra precise HDR markers for users who want to split HDR variants.
INSERT INTO regular_expressions (name, pattern, description)
SELECT 'HDR10', '\bHDR10\b', 'Matches HDR10 markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'HDR10');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'HLG', '\bHLG\b', 'Matches HLG HDR markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'HLG');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'PQ', '\bPQ(?:10)?\b', 'Matches PQ and PQ10 HDR markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'PQ');

INSERT INTO tags (name)
SELECT name
FROM (
    SELECT 'Grouped' AS name
    UNION ALL SELECT 'Template'
    UNION ALL SELECT 'Basic'
    UNION ALL SELECT 'Expert'
) wanted
WHERE NOT EXISTS (SELECT 1 FROM tags WHERE tags.name = wanted.name);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('HDR10', 'HLG', 'PQ')
  AND t.name IN ('HDR')
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expressions (name, pattern, description)
SELECT name, pattern, description
FROM (
    SELECT 'DV' AS name, '(?i)(?<=^|[\s._-])DV(?![\s._-]?(?:HLG|SDR))(?=$|[\s._-])' AS pattern, 'Matches DV markers without matching DV HLG or DV SDR.' AS description
    UNION ALL SELECT 'DoVi', '(?i)(?<=^|[\s._-])DoVi(?![\s._-]?(?:HLG|SDR))(?=$|[\s._-])', 'Matches DoVi markers without matching DoVi HLG or DoVi SDR.'
) wanted
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE regular_expressions.name = wanted.name);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('DV', 'DoVi')
  AND t.name IN ('HDR')
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expressions (name, pattern, description)
SELECT name, pattern, description
FROM (
    SELECT '480p' AS name, '(?i)(?<=^|[\s.-])480p(?=$|[\s.-])' AS pattern, 'Matches 480p resolution markers.' AS description
    UNION ALL SELECT '576p', '(?i)(?<=^|[\s.-])576p(?=$|[\s.-])', 'Matches 576p resolution markers.'
    UNION ALL SELECT '720p', '(?i)(?<=^|[\s.-])720p(?=$|[\s.-])', 'Matches 720p resolution markers.'
    UNION ALL SELECT '1080p', '(?i)(?<=^|[\s.-])1080p(?=$|[\s.-])', 'Matches 1080p resolution markers.'
    UNION ALL SELECT '2160p', '(?i)(?<=^|[\s.-])2160p(?=$|[\s.-])', 'Matches 2160p resolution markers.'
    UNION ALL SELECT 'SD', '(?i)(?<=^|[\s._-])SD(?![\s._-]?(?:R|TV))(?=$|[\s._-])', 'Matches standalone SD markers without matching SDR or SDTV.'
    UNION ALL SELECT 'PAL', '(?i)(?<=^|[\s._-])PAL(?=$|[\s._-])', 'Matches PAL resolution markers.'
    UNION ALL SELECT 'HD', '(?i)(?<=^|[\s._-])HD(?![\s._-]?(?:Light|Lite|TV|DVD))(?=$|[\s._-])', 'Matches standalone HD markers without matching HDLight, HDLite, HDTV or HD-DVD.'
    UNION ALL SELECT 'FHD', '(?i)(?<=^|[\s._-])FHD(?=$|[\s._-])', 'Matches FHD resolution markers.'
    UNION ALL SELECT 'Full HD', '(?i)(?<=^|[\s._-])Full[\s._-]?HD(?=$|[\s._-])', 'Matches Full HD, Full-HD and FullHD resolution markers.'
    UNION ALL SELECT 'UHD', '(?i)(?<=^|[\s._-])UHD(?![\s._-]?(?:Light|Lite))(?=$|[\s._-])', 'Matches standalone UHD markers without matching UHDLight or UHDLite.'
    UNION ALL SELECT '4K', '(?i)(?<=^|[\s._-])4K(?![\s._-]?(?:Light|Lite))(?=$|[\s._-])', 'Matches standalone 4K markers without matching 4KLight or 4KLite.'
    UNION ALL SELECT 'BD', '(?i)(?<=^|[\s._-])BD(?![\s._-]?(?:Rip|Light|Lite))(?=$|[\s._-])', 'Matches standalone BD source markers without matching BDRip or BDLight.'
    UNION ALL SELECT 'WEB', '(?i)(?<=^|[\s._-])WEB(?![\s._-]?(?:Rip|Light|Lite|DL))(?=$|[\s._-])', 'Matches standalone WEB source markers without matching WEBRip, WEBLight or WEB-DL.'
    UNION ALL SELECT 'BDRip', '(?i)(?<=^|[\s._-])BD[\s._-]?Rip(?=$|[\s._-])', 'Matches BDRip and BD Rip source markers.'
    UNION ALL SELECT 'BRRip', '(?i)(?<=^|[\s._-])BR[\s._-]?Rip(?=$|[\s._-])', 'Matches BRRip and BR Rip source markers.'
    UNION ALL SELECT 'BluRay Rip', '(?i)(?<=^|[\s._-])Blu[\s._-]?Ray[\s._-]?Rip(?=$|[\s._-])', 'Matches BluRay Rip source markers.'
    UNION ALL SELECT 'DVDRip', '(?i)(?<=^|[\s._-])DVDRip(?=$|[\s._-])', 'Matches DVDRip source markers.'
    UNION ALL SELECT 'PDTV', '(?i)(?<=^|[\s._-])PDTV(?=$|[\s._-])', 'Matches PDTV source markers.'
    UNION ALL SELECT 'DSR', '(?i)(?<=^|[\s._-])DSR(?=$|[\s._-])', 'Matches DSR source markers.'
    UNION ALL SELECT 'TVRip', '(?i)(?<=^|[\s._-])TVRip(?=$|[\s._-])', 'Matches TVRip source markers.'
    UNION ALL SELECT 'AOMedia Video 1', '(?i)(?<=^|[\s._-])AOMedia[\s._-]?Video[\s._-]?1(?=$|[\s._-])', 'Matches AOMedia Video 1 codec markers.'
    UNION ALL SELECT 'H.264', '(?i)(?<=^|[\s._-])H\.264(?=$|[\s._-])', 'Matches H.264 codec markers.'
    UNION ALL SELECT 'h264', '(?i)(?<=^|[\s._-])h[\s._-]?264(?=$|[\s._-])', 'Matches h264 codec markers.'
    UNION ALL SELECT 'H.265', '(?i)(?<=^|[\s._-])H\.265(?=$|[\s._-])', 'Matches H.265 codec markers.'
) wanted
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE regular_expressions.name = wanted.name);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('480p', '576p', '720p', '1080p', '2160p', 'SD', 'PAL', 'HD', 'FHD', 'Full HD', 'UHD', '4K')
  AND t.name IN ('480p', '576p', '720p', '1080p', '2160p', 'Quality')
  AND (
    re.name = t.name
    OR t.name = 'Quality'
    OR (re.name = 'SD' AND t.name = '480p')
    OR (re.name = 'PAL' AND t.name = '576p')
    OR (re.name = 'HD' AND t.name = '720p')
    OR (re.name IN ('FHD', 'Full HD') AND t.name = '1080p')
    OR (re.name IN ('UHD', '4K') AND t.name = '2160p')
  )
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('Bluray', 'BD', 'WEB-DL', 'WEB', 'WEBRip', 'BDRip', 'BRRip', 'BluRay Rip', 'Rip', 'DVDRip', 'HDTV', 'PDTV', 'DSR', 'TVRip', 'UHD Bluray')
  AND t.name = 'Source'
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('AV1', 'AOMedia Video 1', 'AVC', 'H.264', 'h264', 'x264', 'HEVC', 'H.265', 'h265', 'x265')
  AND t.name = 'Codec'
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_formats (name, description)
SELECT name, description
FROM (
    SELECT 'HDR10' AS name, 'Matches HDR10 markers.' AS description
    UNION ALL SELECT 'HLG', 'Matches HLG HDR markers.'
    UNION ALL SELECT 'PQ', 'Matches PQ and PQ10 HDR markers.'
    UNION ALL SELECT 'IMAX', 'Matches IMAX release markers.'
    UNION ALL SELECT '480p', 'Matches 480p and SD resolution markers.'
    UNION ALL SELECT '576p', 'Matches 576p and PAL resolution markers.'
    UNION ALL SELECT '720p', 'Matches 720p and HD resolution markers.'
    UNION ALL SELECT '1080p', 'Matches 1080p, FHD and Full HD resolution markers.'
    UNION ALL SELECT '2160p', 'Matches 2160p, UHD and 4K resolution markers.'
    UNION ALL SELECT 'WEB Source', 'Grouped source CF matching WEB-DL or WEBRip markers.'
    UNION ALL SELECT 'Disc Source', 'Grouped source CF matching Bluray, Remux or Full Disc markers.'
    UNION ALL SELECT 'Rip Source', 'Grouped source CF matching BDRip, BRRip, generic Rip or HDTV markers.'
    UNION ALL SELECT 'Modern Codec', 'Grouped codec CF matching AV1 or H.265/HEVC/x265 markers.'
    UNION ALL SELECT 'Legacy Codec', 'Grouped codec CF matching H.264, AVC or x264 markers.'
    UNION ALL SELECT 'Light Encode', 'Grouped technical CF matching HDLight or 4KLight markers.'
    UNION ALL SELECT 'French Accepted', 'Grouped French language CF matching MULTi, French Original markers, VF or VOSTFR.'
) wanted
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE custom_formats.name = wanted.name);

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('WEB Source', 'Disc Source', 'Rip Source', 'Modern Codec', 'Legacy Codec', 'Light Encode', 'French Accepted')
  AND t.name = 'Grouped'
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('HDR10', 'HLG', 'PQ')
  AND t.name = 'HDR'
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'IMAX'
  AND t.name IN ('Aspect Ratio', 'Enhancement')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('480p', '576p', '720p', '1080p', '2160p')
  AND t.name IN ('480p', '576p', '720p', '1080p', '2160p', 'Quality')
  AND (cf.name = t.name OR t.name = 'Quality')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf_name, condition_name, 'release_title', 'all', 0, 1
FROM (
    SELECT 'HDR10' AS cf_name, 'HDR10' AS condition_name
    UNION ALL SELECT 'HLG', 'HLG'
    UNION ALL SELECT 'PQ', 'PQ'
    UNION ALL SELECT 'IMAX', 'IMAX'
    UNION ALL SELECT '480p', '480p'
    UNION ALL SELECT '480p', 'SD'
    UNION ALL SELECT '576p', '576p'
    UNION ALL SELECT '576p', 'PAL'
    UNION ALL SELECT '720p', '720p'
    UNION ALL SELECT '720p', 'HD'
    UNION ALL SELECT '1080p', '1080p'
    UNION ALL SELECT '1080p', 'FHD'
    UNION ALL SELECT '1080p', 'Full HD'
    UNION ALL SELECT '2160p', '2160p'
    UNION ALL SELECT '2160p', 'UHD'
    UNION ALL SELECT '2160p', '4K'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions existing
    WHERE existing.custom_format_name = wanted.cf_name
      AND existing.name = wanted.condition_name
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT cf_name, condition_name, regex_name
FROM (
    SELECT 'HDR10' AS cf_name, 'HDR10' AS condition_name, 'HDR10' AS regex_name
    UNION ALL SELECT 'HLG', 'HLG', 'HLG'
    UNION ALL SELECT 'PQ', 'PQ', 'PQ'
    UNION ALL SELECT 'IMAX', 'IMAX', 'IMAX'
    UNION ALL SELECT '480p', '480p', '480p'
    UNION ALL SELECT '480p', 'SD', 'SD'
    UNION ALL SELECT '576p', '576p', '576p'
    UNION ALL SELECT '576p', 'PAL', 'PAL'
    UNION ALL SELECT '720p', '720p', '720p'
    UNION ALL SELECT '720p', 'HD', 'HD'
    UNION ALL SELECT '1080p', '1080p', '1080p'
    UNION ALL SELECT '1080p', 'FHD', 'FHD'
    UNION ALL SELECT '1080p', 'Full HD', 'Full HD'
    UNION ALL SELECT '2160p', '2160p', '2160p'
    UNION ALL SELECT '2160p', 'UHD', 'UHD'
    UNION ALL SELECT '2160p', '4K', '4K'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns existing
    WHERE existing.custom_format_name = wanted.cf_name
      AND existing.condition_name = wanted.condition_name
      AND existing.regular_expression_name = wanted.regex_name
);

-- Grouped Custom Formats are intentionally broad and score once even when
-- several equivalent markers are present in the same release title.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf_name, condition_name, 'release_title', 'all', 0, 0
FROM (
    SELECT 'WEB Source' AS cf_name, 'WEB-DL' AS condition_name
    UNION ALL SELECT 'WEB Source', 'WEBRip'
    UNION ALL SELECT 'WEB Source', 'WEB'
    UNION ALL SELECT 'Disc Source', 'Bluray'
    UNION ALL SELECT 'Disc Source', 'BD'
    UNION ALL SELECT 'Disc Source', 'UHD Bluray'
    UNION ALL SELECT 'Disc Source', 'Remux'
    UNION ALL SELECT 'Disc Source', 'Full Disc'
    UNION ALL SELECT 'Rip Source', 'BDRip / BRRip'
    UNION ALL SELECT 'Rip Source', 'BDRip'
    UNION ALL SELECT 'Rip Source', 'BRRip'
    UNION ALL SELECT 'Rip Source', 'BluRay Rip'
    UNION ALL SELECT 'Rip Source', 'Rip'
    UNION ALL SELECT 'Rip Source', 'DVDRip'
    UNION ALL SELECT 'Rip Source', 'HDTV'
    UNION ALL SELECT 'Rip Source', 'PDTV'
    UNION ALL SELECT 'Rip Source', 'DSR'
    UNION ALL SELECT 'Rip Source', 'TVRip'
    UNION ALL SELECT 'Modern Codec', 'AV1'
    UNION ALL SELECT 'Modern Codec', 'AOMedia Video 1'
    UNION ALL SELECT 'Modern Codec', 'HEVC'
    UNION ALL SELECT 'Modern Codec', 'h265'
    UNION ALL SELECT 'Modern Codec', 'H.265'
    UNION ALL SELECT 'Modern Codec', 'x265'
    UNION ALL SELECT 'Legacy Codec', 'AVC'
    UNION ALL SELECT 'Legacy Codec', 'x264'
    UNION ALL SELECT 'Legacy Codec', 'h264'
    UNION ALL SELECT 'Legacy Codec', 'H.264'
    UNION ALL SELECT 'Light Encode', 'HDLight'
    UNION ALL SELECT 'Light Encode', '4KLight'
    UNION ALL SELECT 'French Accepted', 'French MULTi'
    UNION ALL SELECT 'French Accepted', 'French Original Marker'
    UNION ALL SELECT 'French Accepted', 'French VF'
    UNION ALL SELECT 'French Accepted', 'French VOSTFR'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM custom_format_conditions existing
    WHERE existing.custom_format_name = wanted.cf_name
      AND existing.name = wanted.condition_name
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT cf_name, condition_name, regex_name
FROM (
    SELECT 'WEB Source' AS cf_name, 'WEB-DL' AS condition_name, 'WEB-DL' AS regex_name
    UNION ALL SELECT 'WEB Source', 'WEBRip', 'WEBRip'
    UNION ALL SELECT 'WEB Source', 'WEB', 'WEB'
    UNION ALL SELECT 'Disc Source', 'Bluray', 'Bluray'
    UNION ALL SELECT 'Disc Source', 'BD', 'BD'
    UNION ALL SELECT 'Disc Source', 'UHD Bluray', 'UHD Bluray'
    UNION ALL SELECT 'Disc Source', 'Remux', 'Remux'
    UNION ALL SELECT 'Disc Source', 'Full Disc', 'Full Disc'
    UNION ALL SELECT 'Rip Source', 'BDRip / BRRip', 'BDRip / BRRip'
    UNION ALL SELECT 'Rip Source', 'BDRip', 'BDRip'
    UNION ALL SELECT 'Rip Source', 'BRRip', 'BRRip'
    UNION ALL SELECT 'Rip Source', 'BluRay Rip', 'BluRay Rip'
    UNION ALL SELECT 'Rip Source', 'Rip', 'Rip'
    UNION ALL SELECT 'Rip Source', 'DVDRip', 'DVDRip'
    UNION ALL SELECT 'Rip Source', 'HDTV', 'HDTV'
    UNION ALL SELECT 'Rip Source', 'PDTV', 'PDTV'
    UNION ALL SELECT 'Rip Source', 'DSR', 'DSR'
    UNION ALL SELECT 'Rip Source', 'TVRip', 'TVRip'
    UNION ALL SELECT 'Modern Codec', 'AV1', 'AV1'
    UNION ALL SELECT 'Modern Codec', 'AOMedia Video 1', 'AOMedia Video 1'
    UNION ALL SELECT 'Modern Codec', 'HEVC', 'HEVC'
    UNION ALL SELECT 'Modern Codec', 'h265', 'h265'
    UNION ALL SELECT 'Modern Codec', 'H.265', 'H.265'
    UNION ALL SELECT 'Modern Codec', 'x265', 'x265'
    UNION ALL SELECT 'Legacy Codec', 'AVC', 'AVC'
    UNION ALL SELECT 'Legacy Codec', 'x264', 'x264'
    UNION ALL SELECT 'Legacy Codec', 'h264', 'h264'
    UNION ALL SELECT 'Legacy Codec', 'H.264', 'H.264'
    UNION ALL SELECT 'Light Encode', 'HDLight', 'HDLight'
    UNION ALL SELECT 'Light Encode', '4KLight', '4KLight'
    UNION ALL SELECT 'French Accepted', 'French MULTi', 'French MULTi'
    UNION ALL SELECT 'French Accepted', 'French Original Marker', 'French Original Marker'
    UNION ALL SELECT 'French Accepted', 'French VF', 'French VF'
    UNION ALL SELECT 'French Accepted', 'French VOSTFR', 'French VOSTFR'
) wanted
WHERE NOT EXISTS (
    SELECT 1 FROM condition_patterns existing
    WHERE existing.custom_format_name = wanted.cf_name
      AND existing.condition_name = wanted.condition_name
      AND existing.regular_expression_name = wanted.regex_name
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'h265', name, 'release_title', 'all', 0, 0
FROM (
    SELECT 'HEVC' AS name
    UNION ALL SELECT 'h265'
    UNION ALL SELECT 'H.265'
    UNION ALL SELECT 'x265'
) wanted
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'h265')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'h265'
      AND name = wanted.name
  );

DELETE FROM condition_resolutions
WHERE custom_format_name = 'h265'
  AND condition_name = 'Not 2160p';

DELETE FROM condition_patterns
WHERE custom_format_name = 'h265'
  AND condition_name = 'Not 2160p';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'h265'
  AND name = 'Not 2160p';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'French Original', 'Not French Original Marker', 'release_title', 'all', 1, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'French Original')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French Original'
      AND name = 'Not French Original Marker'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Original', 'Not French Original Marker', 'French Original Marker'
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'French Original'
      AND name = 'Not French Original Marker'
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'French Original'
      AND condition_name = 'Not French Original Marker'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'h265', re.name, re.name
FROM regular_expressions re
WHERE re.name IN ('HEVC', 'h265', 'H.265', 'x265')
  AND EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'h265'
      AND name = re.name
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'h265'
      AND condition_name = re.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf_name, condition_name, 'release_title', 'all', 0, 1
FROM (
    SELECT 'Bluray' AS cf_name, 'BD' AS condition_name
    UNION ALL SELECT 'WEB-DL', 'WEB'
    UNION ALL SELECT 'BDRip / BRRip', 'BDRip'
    UNION ALL SELECT 'BDRip / BRRip', 'BRRip'
    UNION ALL SELECT 'BDRip / BRRip', 'BluRay Rip'
    UNION ALL SELECT 'Rip', 'DVDRip'
    UNION ALL SELECT 'HDTV', 'PDTV'
    UNION ALL SELECT 'HDTV', 'DSR'
    UNION ALL SELECT 'HDTV', 'TVRip'
    UNION ALL SELECT 'AV1', 'AOMedia Video 1'
    UNION ALL SELECT 'h264', 'AVC'
    UNION ALL SELECT 'h264', 'x264'
    UNION ALL SELECT 'h264', 'H.264'
    UNION ALL SELECT 'h264', 'h264'
) wanted
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = wanted.cf_name)
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = wanted.cf_name
      AND name = wanted.condition_name
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT cf_name, condition_name, regex_name
FROM (
    SELECT 'Bluray' AS cf_name, 'BD' AS condition_name, 'BD' AS regex_name
    UNION ALL SELECT 'WEB-DL', 'WEB', 'WEB'
    UNION ALL SELECT 'BDRip / BRRip', 'BDRip', 'BDRip'
    UNION ALL SELECT 'BDRip / BRRip', 'BRRip', 'BRRip'
    UNION ALL SELECT 'BDRip / BRRip', 'BluRay Rip', 'BluRay Rip'
    UNION ALL SELECT 'Rip', 'DVDRip', 'DVDRip'
    UNION ALL SELECT 'HDTV', 'PDTV', 'PDTV'
    UNION ALL SELECT 'HDTV', 'DSR', 'DSR'
    UNION ALL SELECT 'HDTV', 'TVRip', 'TVRip'
    UNION ALL SELECT 'AV1', 'AOMedia Video 1', 'AOMedia Video 1'
    UNION ALL SELECT 'h264', 'AVC', 'AVC'
    UNION ALL SELECT 'h264', 'x264', 'x264'
    UNION ALL SELECT 'h264', 'H.264', 'H.264'
    UNION ALL SELECT 'h264', 'h264', 'h264'
) wanted
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = wanted.cf_name
      AND name = wanted.condition_name
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = wanted.cf_name
      AND condition_name = wanted.condition_name
  );

UPDATE condition_patterns
SET regular_expression_name = 'h264'
WHERE custom_format_name = 'h264'
  AND condition_name = 'h264';

UPDATE condition_patterns
SET regular_expression_name = 'h265'
WHERE custom_format_name = 'h265'
  AND condition_name = 'h265';

UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name IN (
  '480p',
  '576p',
  '720p',
  '1080p',
  '2160p',
  'Bluray',
  'WEB-DL',
  'WEBRip',
  'BDRip / BRRip',
  'Rip',
  'HDTV',
  'AV1',
  'h264',
  'h265'
)
  AND type = 'release_title';

-- Normalize technical regexes for template usage. These patterns are broad
-- enough to catch common naming variants, but strict enough to avoid accidental
-- matches such as HD -> HDLight, UHD -> UHDLight, 4K -> 4KLight, or WEB -> WEBLight.
UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])480p(?=$|[\s._-])',
    description = 'Matches 480p resolution markers.'
WHERE name = '480p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])576p(?=$|[\s._-])',
    description = 'Matches 576p resolution markers.'
WHERE name = '576p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])SD(?![\s._-]?(?:R|TV))(?=$|[\s._-])',
    description = 'Matches standalone SD markers without matching SDR or SDTV.'
WHERE name = 'SD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])PAL(?=$|[\s._-])',
    description = 'Matches PAL resolution markers.'
WHERE name = 'PAL';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HD(?![\s._-]?(?:Light|Lite|TV|DVD))(?=$|[\s._-])',
    description = 'Matches standalone HD markers without matching HDLight, HDLite, HDTV or HD-DVD.'
WHERE name = 'HD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])720p(?=$|[\s._-])',
    description = 'Matches 720p resolution markers.'
WHERE name = '720p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])1080p(?=$|[\s._-])',
    description = 'Matches 1080p resolution markers.'
WHERE name = '1080p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])FHD(?=$|[\s._-])',
    description = 'Matches FHD resolution markers.'
WHERE name = 'FHD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Full[\s._-]?HD(?=$|[\s._-])',
    description = 'Matches Full HD, Full-HD and FullHD resolution markers.'
WHERE name = 'Full HD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])2160p(?=$|[\s._-])',
    description = 'Matches 2160p resolution markers.'
WHERE name = '2160p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])UHD(?![\s._-]?(?:Light|Lite))(?=$|[\s._-])',
    description = 'Matches standalone UHD markers without matching UHDLight or UHDLite.'
WHERE name = 'UHD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])4K(?![\s._-]?(?:Light|Lite))(?=$|[\s._-])',
    description = 'Matches standalone 4K markers without matching 4KLight or 4KLite.'
WHERE name = '4K';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Blu[\s._-]?Ray(?![\s._-]?(?:Rip|Light|Lite))(?=$|[\s._-])',
    description = 'Matches BluRay, Blu-Ray and Blu Ray source markers without matching BluRay Rip or BluRay Light.'
WHERE name = 'Bluray';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])BD(?![\s._-]?(?:Rip|Light|Lite))(?=$|[\s._-])',
    description = 'Matches standalone BD source markers without matching BDRip or BDLight.'
WHERE name = 'BD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:WEB[\s._-]?DL|WEBDL)(?=$|[\s._-])',
    description = 'Matches WEB-DL, WEBDL and WEB DL source markers.'
WHERE name = 'WEB-DL';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])WEB(?![\s._-]?(?:Rip|Light|Lite|DL))(?=$|[\s._-])',
    description = 'Matches standalone WEB source markers without matching WEBRip, WEBLight or WEB-DL.'
WHERE name = 'WEB';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])WEB[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches WEBRip, WEB-Rip, WEB.Rip and WEB Rip source markers.'
WHERE name = 'WEBRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])BD[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches BDRip and BD Rip source markers.'
WHERE name = 'BDRip / BRRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])BD[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches BDRip and BD Rip source markers.'
WHERE name = 'BDRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])BR[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches BRRip and BR Rip source markers.'
WHERE name = 'BRRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Blu[\s._-]?Ray[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches BluRay Rip source markers.'
WHERE name = 'BluRay Rip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Rip(?=$|[\s._-])',
    description = 'Matches generic Rip markers.'
WHERE name = 'Rip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DVDRip(?=$|[\s._-])',
    description = 'Matches DVDRip source markers.'
WHERE name = 'DVDRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HDTV(?=$|[\s._-])',
    description = 'Matches HDTV broadcast source markers.'
WHERE name = 'HDTV';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])PDTV(?=$|[\s._-])',
    description = 'Matches PDTV broadcast source markers.'
WHERE name = 'PDTV';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DSR(?=$|[\s._-])',
    description = 'Matches DSR broadcast source markers.'
WHERE name = 'DSR';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])TVRip(?=$|[\s._-])',
    description = 'Matches TVRip broadcast source markers.'
WHERE name = 'TVRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:UHD[\s._-]?(?:Blu[\s._-]?Ray|BD)|4K[\s._-]?(?:Blu[\s._-]?Ray|BD))(?=$|[\s._-])',
    description = 'Matches UHD BluRay, UHD-BD, 4K BluRay and 4K-BD source markers.'
WHERE name = 'UHD Bluray';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])AV1(?=$|[\s._-])',
    description = 'Matches AV1 codec markers.'
WHERE name = 'AV1';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])AOMedia[\s._-]?Video[\s._-]?1(?=$|[\s._-])',
    description = 'Matches AOMedia Video 1 codec markers.'
WHERE name = 'AOMedia Video 1';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])AVC(?=$|[\s._-])',
    description = 'Matches AVC codec markers.'
WHERE name = 'AVC';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])x[\s._-]?264(?=$|[\s._-])',
    description = 'Matches x264 codec markers.'
WHERE name = 'x264';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])h[\s._-]?264(?=$|[\s._-])',
    description = 'Matches h264 codec markers.'
WHERE name = 'h264';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])H\.264(?=$|[\s._-])',
    description = 'Matches H.264 codec markers.'
WHERE name = 'H.264';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HEVC(?=$|[\s._-])',
    description = 'Matches HEVC codec markers.'
WHERE name = 'HEVC';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])h[\s._-]?265(?=$|[\s._-])',
    description = 'Matches h265 codec markers.'
WHERE name = 'h265';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])x[\s._-]?265(?=$|[\s._-])',
    description = 'Matches x265 codec markers.'
WHERE name = 'x265';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])H\.265(?=$|[\s._-])',
    description = 'Matches H.265 codec markers.'
WHERE name = 'H.265';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HDR(?!10|\d)(?=$|[\s._-])',
    description = 'Matches standalone HDR markers without matching HDR10 or HDR10+.'
WHERE name = 'HDR';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HDR10(?![\s._-]?(?:\+|P|Plus))(?=$|[\s._-])',
    description = 'Matches HDR10 markers without matching HDR10+ variants.'
WHERE name = 'HDR10';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])HDR10[\s._-]?(?:\+|P|Plus)(?=$|[\s._-])',
    description = 'Matches HDR10+, HDR10P and HDR10 Plus markers.'
WHERE name = 'HDR10+';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:HLG|Hybrid[\s._-]?Log[\s._-]?Gamma)(?=$|[\s._-])',
    description = 'Matches HLG and Hybrid Log Gamma HDR markers.'
WHERE name = 'HLG';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:PQ|PQ10|Perceptual[\s._-]?Quantizer)(?=$|[\s._-])',
    description = 'Matches PQ, PQ10 and Perceptual Quantizer HDR markers.'
WHERE name = 'PQ';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Dolby[\s._-]?Vision(?![\s._-]?(?:HLG|SDR))(?=$|[\s._-])',
    description = 'Matches Dolby Vision markers without matching Dolby Vision HLG or Dolby Vision SDR.'
WHERE name = 'Dolby Vision';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:HDR(?!\d)|HDR10(?:[\s._-]?(?:\+|P|Plus))?|HLG|PQ10?|DV|DoVi|Dolby[\s._-]?Vision)(?![\s._-]?(?:SDR))(?=$|[\s._-])',
    description = 'Matches common HDR and Dolby Vision markers as a broad HDR/DV umbrella.'
WHERE name = 'Basic HDR Formats';

DELETE FROM condition_patterns
WHERE custom_format_name = 'HDR / DV'
  AND condition_name = 'HDR / DV';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'HDR / DV'
  AND name = 'HDR / DV';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'HDR / DV', condition_name, 'release_title', 'all', 0, 0
FROM (
    SELECT 'HDR' AS condition_name
    UNION ALL SELECT 'HDR10'
    UNION ALL SELECT 'HDR10+'
    UNION ALL SELECT 'HLG'
    UNION ALL SELECT 'PQ'
    UNION ALL SELECT 'DV'
    UNION ALL SELECT 'DoVi'
    UNION ALL SELECT 'Dolby Vision'
) wanted
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'HDR / DV')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'HDR / DV'
      AND name = wanted.condition_name
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HDR / DV', condition_name, condition_name
FROM (
    SELECT 'HDR' AS condition_name
    UNION ALL SELECT 'HDR10'
    UNION ALL SELECT 'HDR10+'
    UNION ALL SELECT 'HLG'
    UNION ALL SELECT 'PQ'
    UNION ALL SELECT 'DV'
    UNION ALL SELECT 'DoVi'
    UNION ALL SELECT 'Dolby Vision'
) wanted
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'HDR / DV'
      AND name = wanted.condition_name
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'HDR / DV'
      AND condition_name = wanted.condition_name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Dolby Vision', condition_name, 'release_title', 'all', 0, 0
FROM (
    SELECT 'DV' AS condition_name
    UNION ALL SELECT 'DoVi'
) wanted
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Dolby Vision')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Dolby Vision'
      AND name = wanted.condition_name
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Vision', condition_name, condition_name
FROM (
    SELECT 'DV' AS condition_name
    UNION ALL SELECT 'DoVi'
) wanted
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Dolby Vision'
      AND name = wanted.condition_name
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'Dolby Vision'
      AND condition_name = wanted.condition_name
  );

UPDATE custom_format_conditions
SET required = 0
WHERE custom_format_name = 'Dolby Vision'
  AND type = 'release_title';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:AAC|AAC[\s._-]?LC|HE[\s._-]?AAC)(?=$|[\s._-]|\d)',
    description = 'Matches AAC, AAC-LC and HE-AAC audio markers.'
WHERE name = 'AAC';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:DD(?:[\s._-]?\d(?:\.\d)?)?|AC[\s._-]?3|Dolby[\s._-]?Digital)(?=$|[\s._-])',
    description = 'Matches Dolby Digital, DD and AC3 audio markers.'
WHERE name = 'Dolby Digital';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:DDP(?:[\s._-]?\d(?:\.\d)?)?|DD\+|E[\s._-]?AC[\s._-]?3|Dolby[\s._-]?Digital[\s._-]?Plus)(?=$|[\s._-])',
    description = 'Matches Dolby Digital Plus, DD+, DDP and EAC3 audio markers.'
WHERE name = 'Dolby Digital +';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DTS(?![\s._-]?(?:HD|ES|X|MA|HRA|XLL))(?=$|[\s._-]|\d)',
    description = 'Matches DTS core markers without matching DTS-HD, DTS-ES or DTS-X.'
WHERE name = 'DTS Basic';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DTS[\s._-]?ES(?=$|[\s._-])',
    description = 'Matches DTS-ES audio markers.'
WHERE name = 'DTS-ES';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DTS[\s._-]?(?:HD[\s._-]?)?(?:HRA|HR|High[\s._-]?Resolution)(?=$|[\s._-])',
    description = 'Matches DTS-HD HRA / High Resolution Audio markers.'
WHERE name = 'DTS-HD HRA';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:DTS[\s._-]?(?:HD[\s._-]?)?(?:MA|Master[\s._-]?Audio)|DTS[\s._-]?XLL|XLL)(?=$|[\s._-])',
    description = 'Matches DTS-HD MA, DTS Master Audio and XLL audio markers.'
WHERE name = 'DTS-HD MA';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])DTS[\s._-]?:?X(?!\d)(?=$|[\s._-])',
    description = 'Matches DTS-X audio markers.'
WHERE name = 'DTS-X';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:True[\s._-]?HD|Dolby[\s._-]?True[\s._-]?HD)(?=$|[\s._-])',
    description = 'Matches TrueHD and Dolby TrueHD audio markers.'
WHERE name = 'TrueHD';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:LPCM|PCM)(?=$|[\s._-]|\d)',
    description = 'Matches PCM and LPCM audio markers.'
WHERE name = 'PCM';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])FLAC(?=$|[\s._-]|\d)',
    description = 'Matches FLAC audio markers.'
WHERE name = 'FLAC';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])Opus(?=$|[\s._-]|\d)',
    description = 'Matches Opus audio markers.'
WHERE name = 'Opus';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])MP3(?=$|[\s._-]|\d)',
    description = 'Matches MP3 audio markers.'
WHERE name = 'MP3';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:2[\s._-]?\.?0|2ch|2[\s._-]?channels?|Stereo)(?=$|[\s._-])',
    description = 'Matches 2.0, 2ch, 2 channels and Stereo channel markers.'
WHERE name = '2.0 Stereo';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:5[\s._-]?\.?1|6ch|6[\s._-]?channels?)(?=$|[\s._-])',
    description = 'Matches 5.1, 6ch and 6 channels markers.'
WHERE name = '5.1 Surround';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:7[\s._-]?\.?1|8ch|8[\s._-]?channels?)(?=$|[\s._-])',
    description = 'Matches 7.1, 8ch and 8 channels markers.'
WHERE name = '7.1 Surround';

-- Replace all opinionated profiles with a small neutral starter set.
DELETE FROM quality_profile_custom_formats;
DELETE FROM quality_profile_qualities;
DELETE FROM quality_group_members;
DELETE FROM quality_groups;
DELETE FROM quality_profile_languages;
DELETE FROM quality_profile_tags;
DELETE FROM quality_profiles;

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES
('Template Basic 1080p FR', 'Template Basic 1080p FR' || char(10) || char(10) || 'Objectif: profil de depart simple pour construire un scoring 1080p francophone.' || char(10) || char(10) || 'Base de scoring: echelle maximale de 10000 points. Les Custom Formats sont groupes par familles: langue, audio, resolution, source, codec, HDR, encodes light et tiers de teams.' || char(10) || char(10) || 'Ajustement: modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme, une resolution, une source ou un groupe.' || char(10) || char(10) || 'Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1),
('Template Basic 2160p FR', 'Template Basic 2160p FR' || char(10) || char(10) || 'Objectif: profil de depart simple pour construire un scoring 2160p francophone.' || char(10) || char(10) || 'Base de scoring: echelle maximale de 10000 points. Les Custom Formats sont groupes par familles: langue, audio, resolution, source, codec, HDR, encodes light et tiers de teams.' || char(10) || char(10) || 'Ajustement: modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme, une resolution, une source ou un groupe.' || char(10) || char(10) || 'Exemple: mettre 2160p a +1000 pour valoriser la 4K, ou 1080p a -99999 pour interdire le fallback 1080p.', 1, 0, 10000, 1),
('Template Expert 1080p FR', 'Template Expert 1080p FR' || char(10) || char(10) || 'Objectif: profil de depart detaille pour piloter finement un scoring 1080p francophone.' || char(10) || char(10) || 'Base de scoring: echelle maximale de 10000 points. Les Custom Formats atomiques permettent de ponderer separement langue, codec, source, resolution, HDR, audio, canaux, encodes light et tiers de teams.' || char(10) || char(10) || 'Ajustement: gardez les scores faibles pour les details techniques, puis donnez le poids principal aux langues et aux tiers de teams. Un score de -99999 sert a bannir strictement un terme.' || char(10) || char(10) || 'Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1),
('Template Expert 2160p FR', 'Template Expert 2160p FR' || char(10) || char(10) || 'Objectif: profil de depart detaille pour piloter finement un scoring 2160p francophone.' || char(10) || char(10) || 'Base de scoring: echelle maximale de 10000 points. Les Custom Formats atomiques permettent de ponderer separement langue, codec, source, resolution, HDR, audio, canaux, encodes light et tiers de teams.' || char(10) || char(10) || 'Ajustement: gardez les scores faibles pour les details techniques, puis donnez le poids principal aux langues et aux tiers de teams. Un score de -99999 sert a bannir strictement un terme.' || char(10) || char(10) || 'Exemple: mettre 2160p a +1000 pour valoriser la 4K, ou 1080p a -99999 pour interdire le fallback 1080p.', 1, 0, 10000, 1);

INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, 'Any', 'must_include'
FROM quality_profiles qp;

INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE t.name IN ('French', 'Template')
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags existing
    WHERE existing.quality_profile_name = qp.name
      AND existing.tag_name = t.name
  );

INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE (
    (qp.name LIKE 'Template Basic%' AND t.name = 'Basic')
    OR (qp.name LIKE 'Template Expert%' AND t.name = 'Expert')
)
  AND NOT EXISTS (
    SELECT 1 FROM quality_profile_tags existing
    WHERE existing.quality_profile_name = qp.name
      AND existing.tag_name = t.name
  );

INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, group_name
FROM quality_profiles qp
JOIN (
    SELECT 'Template Basic 1080p FR' AS profile_name, '1080p Template' AS group_name
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template'
    UNION ALL SELECT 'Template Basic 2160p FR', '2160p Template'
    UNION ALL SELECT 'Template Expert 2160p FR', '2160p Template'
    UNION ALL SELECT 'Template Basic 2160p FR', '1080p Fallback'
    UNION ALL SELECT 'Template Expert 2160p FR', '1080p Fallback'
) wanted ON wanted.profile_name = qp.name;

INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT wanted.profile_name, wanted.group_name, q.name, wanted.position
FROM qualities q
JOIN (
    SELECT 'Template Basic 1080p FR' AS profile_name, '1080p Template' AS group_name, 'Bluray-1080p' AS quality_name, 0 AS position
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBDL-1080p', 1
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBRip-1080p', 2
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'HDTV-1080p', 3
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'Bluray-720p', 4
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBDL-720p', 5
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBRip-720p', 6
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'HDTV-720p', 7
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'Bluray-576p', 8
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'Bluray-480p', 9
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBDL-480p', 10
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'WEBRip-480p', 11
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'DVD', 12
    UNION ALL SELECT 'Template Basic 1080p FR', '1080p Template', 'SDTV', 13
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'Bluray-1080p', 0
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBDL-1080p', 1
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBRip-1080p', 2
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'HDTV-1080p', 3
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'Bluray-720p', 4
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBDL-720p', 5
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBRip-720p', 6
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'HDTV-720p', 7
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'Bluray-576p', 8
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'Bluray-480p', 9
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBDL-480p', 10
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBRip-480p', 11
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'DVD', 12
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'SDTV', 13
    UNION ALL SELECT 'Template Basic 2160p FR', '2160p Template', 'Bluray-2160p', 0
    UNION ALL SELECT 'Template Basic 2160p FR', '2160p Template', 'WEBDL-2160p', 1
    UNION ALL SELECT 'Template Basic 2160p FR', '2160p Template', 'WEBRip-2160p', 2
    UNION ALL SELECT 'Template Expert 2160p FR', '2160p Template', 'Bluray-2160p', 0
    UNION ALL SELECT 'Template Expert 2160p FR', '2160p Template', 'WEBDL-2160p', 1
    UNION ALL SELECT 'Template Expert 2160p FR', '2160p Template', 'WEBRip-2160p', 2
    UNION ALL SELECT 'Template Basic 2160p FR', '1080p Fallback', 'Bluray-1080p', 0
    UNION ALL SELECT 'Template Basic 2160p FR', '1080p Fallback', 'WEBDL-1080p', 1
    UNION ALL SELECT 'Template Basic 2160p FR', '1080p Fallback', 'WEBRip-1080p', 2
    UNION ALL SELECT 'Template Expert 2160p FR', '1080p Fallback', 'Bluray-1080p', 0
    UNION ALL SELECT 'Template Expert 2160p FR', '1080p Fallback', 'WEBDL-1080p', 1
    UNION ALL SELECT 'Template Expert 2160p FR', '1080p Fallback', 'WEBRip-1080p', 2
) wanted ON wanted.quality_name = q.name;

INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
VALUES
('Template Basic 1080p FR', '1080p Template', 0, 1),
('Template Expert 1080p FR', '1080p Template', 0, 1),
('Template Basic 2160p FR', '2160p Template', 0, 1),
('Template Basic 2160p FR', '1080p Fallback', 1, 0),
('Template Expert 2160p FR', '2160p Template', 0, 1),
('Template Expert 2160p FR', '1080p Fallback', 1, 0);

-- Basic profiles: mostly grouped CFs.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, wanted.custom_format_name, wanted.arr_type, wanted.score
FROM quality_profiles qp
JOIN (
    SELECT 'French MULTi' AS custom_format_name, 'all' AS arr_type, 7 AS score
    UNION ALL SELECT 'French Original', 'all', 7
    UNION ALL SELECT 'French Original Marker', 'all', 7
    UNION ALL SELECT 'French VF', 'all', 7
    UNION ALL SELECT 'French VOSTFR', 'all', 7
    UNION ALL SELECT 'French VFQ', 'all', 7
    UNION ALL SELECT 'French Missing', 'all', 7
    UNION ALL SELECT 'Lossless Audio', 'all', 1
    UNION ALL SELECT 'Lossy Audio', 'all', 1
    UNION ALL SELECT '2.0 Stereo', 'all', 1
    UNION ALL SELECT '5.1 Surround', 'all', 1
    UNION ALL SELECT '7.1 Surround', 'all', 1
    UNION ALL SELECT '480p', 'all', 2
    UNION ALL SELECT '576p', 'all', 2
    UNION ALL SELECT '720p', 'all', 2
    UNION ALL SELECT '1080p', 'all', 2
    UNION ALL SELECT '2160p', 'all', 2
    UNION ALL SELECT 'Bluray', 'all', 5
    UNION ALL SELECT 'UHD Bluray', 'all', 5
    UNION ALL SELECT 'Remux', 'all', 5
    UNION ALL SELECT 'Full Disc', 'all', 5
    UNION ALL SELECT 'WEB-DL', 'all', 5
    UNION ALL SELECT 'WEBRip', 'all', 5
    UNION ALL SELECT 'BDRip / BRRip', 'all', 5
    UNION ALL SELECT 'HDTV', 'all', 5
    UNION ALL SELECT 'AV1', 'all', 3
    UNION ALL SELECT 'h264', 'all', 3
    UNION ALL SELECT 'h265', 'all', 3
    UNION ALL SELECT 'HDR / DV', 'all', 4
    UNION ALL SELECT 'IMAX', 'all', 4
    UNION ALL SELECT 'HDLight', 'all', 5
    UNION ALL SELECT '4KLight', 'all', 5
    UNION ALL SELECT 'FR Media Tier 1', 'all', 60
    UNION ALL SELECT 'FR Media Tier 2', 'all', 55
    UNION ALL SELECT 'FR Media Tier 3', 'all', 50
    UNION ALL SELECT 'FR Anime Tier 1', 'all', 60
    UNION ALL SELECT 'FR Anime Tier 2', 'all', 55
    UNION ALL SELECT 'FR Anime Tier 3', 'all', 50
    UNION ALL SELECT 'FR Anime FanSub', 'all', 45
    UNION ALL SELECT 'FR Scene Unranked', 'all', 45
    UNION ALL SELECT 'FR Low Quality / Banned', 'all', -99999
) wanted
WHERE qp.name LIKE 'Template Basic%'
  AND EXISTS (SELECT 1 FROM custom_formats cf WHERE cf.name = wanted.custom_format_name);

-- Expert profiles: atomics first, with the same small-scale score philosophy.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, wanted.custom_format_name, wanted.arr_type, wanted.score
FROM quality_profiles qp
JOIN (
    SELECT 'French MULTi' AS custom_format_name, 'all' AS arr_type, 7 AS score
    UNION ALL SELECT 'French Original', 'all', 7
    UNION ALL SELECT 'French Original Marker', 'all', 7
    UNION ALL SELECT 'French VF', 'all', 7
    UNION ALL SELECT 'French VOSTFR', 'all', 7
    UNION ALL SELECT 'French VFQ', 'all', 7
    UNION ALL SELECT 'French Missing', 'all', 7
    UNION ALL SELECT 'AAC', 'all', 1
    UNION ALL SELECT 'Dolby Digital', 'all', 1
    UNION ALL SELECT 'Dolby Digital +', 'all', 1
    UNION ALL SELECT 'DTS', 'all', 1
    UNION ALL SELECT 'DTS-ES', 'all', 1
    UNION ALL SELECT 'DTS-HD HRA', 'all', 1
    UNION ALL SELECT 'Opus', 'all', 1
    UNION ALL SELECT 'MP3', 'all', 1
    UNION ALL SELECT 'FLAC', 'all', 1
    UNION ALL SELECT 'TrueHD', 'all', 1
    UNION ALL SELECT 'DTS-HD MA', 'all', 1
    UNION ALL SELECT 'DTS-X', 'all', 1
    UNION ALL SELECT 'PCM', 'all', 1
    UNION ALL SELECT 'Atmos', 'all', 1
    UNION ALL SELECT 'Dolby Atmos', 'all', 1
    UNION ALL SELECT '2.0 Stereo', 'all', 1
    UNION ALL SELECT '5.1 Surround', 'all', 1
    UNION ALL SELECT '7.1 Surround', 'all', 1
    UNION ALL SELECT '480p', 'all', 2
    UNION ALL SELECT '576p', 'all', 2
    UNION ALL SELECT '720p', 'all', 2
    UNION ALL SELECT '1080p', 'all', 2
    UNION ALL SELECT '2160p', 'all', 2
    UNION ALL SELECT 'Bluray', 'all', 5
    UNION ALL SELECT 'UHD Bluray', 'all', 5
    UNION ALL SELECT 'Remux', 'all', 5
    UNION ALL SELECT 'Full Disc', 'all', 5
    UNION ALL SELECT 'WEB-DL', 'all', 5
    UNION ALL SELECT 'WEBRip', 'all', 5
    UNION ALL SELECT 'BDRip / BRRip', 'all', 5
    UNION ALL SELECT 'HDTV', 'all', 5
    UNION ALL SELECT 'AV1', 'all', 3
    UNION ALL SELECT 'h264', 'all', 3
    UNION ALL SELECT 'h265', 'all', 3
    UNION ALL SELECT 'HDR', 'all', 4
    UNION ALL SELECT 'HDR10+', 'all', 4
    UNION ALL SELECT 'HDR10', 'all', 4
    UNION ALL SELECT 'HLG', 'all', 4
    UNION ALL SELECT 'PQ', 'all', 4
    UNION ALL SELECT 'Dolby Vision', 'all', 4
    UNION ALL SELECT 'IMAX', 'all', 4
    UNION ALL SELECT 'HDLight', 'all', 5
    UNION ALL SELECT '4KLight', 'all', 5
    UNION ALL SELECT 'FR Media Tier 1', 'all', 60
    UNION ALL SELECT 'FR Media Tier 2', 'all', 55
    UNION ALL SELECT 'FR Media Tier 3', 'all', 50
    UNION ALL SELECT 'FR Anime Tier 1', 'all', 60
    UNION ALL SELECT 'FR Anime Tier 2', 'all', 55
    UNION ALL SELECT 'FR Anime Tier 3', 'all', 50
    UNION ALL SELECT 'FR Anime FanSub', 'all', 45
    UNION ALL SELECT 'FR Scene Unranked', 'all', 45
    UNION ALL SELECT 'FR Low Quality / Banned', 'all', -99999
) wanted
WHERE qp.name LIKE 'Template Expert%'
  AND EXISTS (SELECT 1 FROM custom_formats cf WHERE cf.name = wanted.custom_format_name);
-- --- END op 9008
