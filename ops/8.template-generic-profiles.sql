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
    SELECT '480p' AS name, '(?i)(?<=^|[\s.-])(?:480p|SD)(?=$|[\s.-])' AS pattern, 'Matches 480p and SD resolution markers.' AS description
    UNION ALL SELECT '576p', '(?i)(?<=^|[\s.-])(?:576p|PAL)(?=$|[\s.-])', 'Matches 576p and PAL resolution markers.'
    UNION ALL SELECT '720p', '(?i)(?<=^|[\s.-])(?:720p|HD)(?=$|[\s.-])', 'Matches 720p and HD resolution markers.'
    UNION ALL SELECT '1080p', '(?i)(?<=^|[\s.-])(?:1080p|FHD|Full[ ._-]?HD)(?=$|[\s.-])', 'Matches 1080p, FHD and Full HD resolution markers.'
    UNION ALL SELECT '2160p', '(?i)(?<=^|[\s.-])(?:2160p|UHD|4K)(?=$|[\s.-])', 'Matches 2160p, UHD and 4K resolution markers.'
) wanted
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE regular_expressions.name = wanted.name);

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('480p', '576p', '720p', '1080p', '2160p')
  AND t.name IN ('480p', '576p', '720p', '1080p', '2160p', 'Quality')
  AND (re.name = t.name OR t.name = 'Quality')
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
    UNION ALL SELECT '576p', '576p'
    UNION ALL SELECT '720p', '720p'
    UNION ALL SELECT '1080p', '1080p'
    UNION ALL SELECT '2160p', '2160p'
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
    UNION ALL SELECT '576p', '576p', '576p'
    UNION ALL SELECT '720p', '720p', '720p'
    UNION ALL SELECT '1080p', '1080p', '1080p'
    UNION ALL SELECT '2160p', '2160p', '2160p'
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
    UNION ALL SELECT 'Disc Source', 'Bluray'
    UNION ALL SELECT 'Disc Source', 'UHD Bluray'
    UNION ALL SELECT 'Disc Source', 'Remux'
    UNION ALL SELECT 'Disc Source', 'Full Disc'
    UNION ALL SELECT 'Rip Source', 'BDRip / BRRip'
    UNION ALL SELECT 'Rip Source', 'Rip'
    UNION ALL SELECT 'Rip Source', 'HDTV'
    UNION ALL SELECT 'Modern Codec', 'AV1'
    UNION ALL SELECT 'Modern Codec', 'HEVC'
    UNION ALL SELECT 'Modern Codec', 'h265'
    UNION ALL SELECT 'Legacy Codec', 'AVC'
    UNION ALL SELECT 'Legacy Codec', 'x264'
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
    UNION ALL SELECT 'Disc Source', 'Bluray', 'Bluray'
    UNION ALL SELECT 'Disc Source', 'UHD Bluray', 'UHD Bluray'
    UNION ALL SELECT 'Disc Source', 'Remux', 'Remux'
    UNION ALL SELECT 'Disc Source', 'Full Disc', 'Full Disc'
    UNION ALL SELECT 'Rip Source', 'BDRip / BRRip', 'BDRip / BRRip'
    UNION ALL SELECT 'Rip Source', 'Rip', 'Rip'
    UNION ALL SELECT 'Rip Source', 'HDTV', 'HDTV'
    UNION ALL SELECT 'Modern Codec', 'AV1', 'AV1'
    UNION ALL SELECT 'Modern Codec', 'HEVC', 'HEVC'
    UNION ALL SELECT 'Modern Codec', 'h265', 'h265'
    UNION ALL SELECT 'Legacy Codec', 'AVC', 'AVC'
    UNION ALL SELECT 'Legacy Codec', 'x264', 'AVC'
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
SELECT 'h265', 'HEVC / x265', 'release_title', 'all', 0, 0
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'h265')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'h265'
      AND name = 'HEVC / x265'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'h265', 'HEVC / x265', re.name
FROM regular_expressions re
WHERE re.name IN ('HEVC', 'x265')
  AND EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'h265'
      AND name = 'HEVC / x265'
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'h265'
      AND condition_name = 'HEVC / x265'
      AND regular_expression_name = re.name
  );

-- Normalize technical regexes for template usage. These patterns are broad
-- enough to catch common naming variants, but strict enough to avoid accidental
-- matches such as HD -> HDLight, UHD -> UHDLight, 4K -> 4KLight, or WEB -> WEBLight.
UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:480p|SD(?![\s._-]?(?:R|TV)))(?=$|[\s._-])',
    description = 'Matches 480p and SD resolution markers without matching SDR or SDTV.'
WHERE name = '480p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:576p|PAL)(?=$|[\s._-])',
    description = 'Matches 576p and PAL resolution markers.'
WHERE name = '576p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:720p|HD(?![\s._-]?(?:Light|Lite|TV|DVD)))(?=$|[\s._-])',
    description = 'Matches 720p and standalone HD markers without matching HDLight, HDLite, HDTV or HD-DVD.'
WHERE name = '720p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:1080p|FHD|Full[\s._-]?HD)(?=$|[\s._-])',
    description = 'Matches 1080p, FHD, FullHD, Full HD and Full-HD resolution markers.'
WHERE name = '1080p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:2160p|UHD(?![\s._-]?(?:Light|Lite))|4K(?![\s._-]?(?:Light|Lite)))(?=$|[\s._-])',
    description = 'Matches 2160p, UHD and 4K markers without matching UHDLight or 4KLight.'
WHERE name = '2160p';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:Blu[\s._-]?Ray(?![\s._-]?(?:Rip|Light|Lite))|BD(?![\s._-]?(?:Rip|Light|Lite)))(?=$|[\s._-])',
    description = 'Matches BluRay, Blu-Ray, Blu Ray and standalone BD source markers without matching BDRip or BDLight.'
WHERE name = 'Bluray';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:WEB[\s._-]?DL|WEBDL|WEB(?![\s._-]?(?:Rip|Light|Lite)))(?=$|[\s._-])',
    description = 'Matches WEB-DL, WEBDL, WEB DL and standalone WEB source markers without matching WEBRip or WEBLight.'
WHERE name = 'WEB-DL';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])WEB[\s._-]?Rip(?=$|[\s._-])',
    description = 'Matches WEBRip, WEB-Rip, WEB.Rip and WEB Rip source markers.'
WHERE name = 'WEBRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:(?:BD|BR)[\s._-]?Rip|Blu[\s._-]?Ray[\s._-]?Rip)(?=$|[\s._-])',
    description = 'Matches BDRip, BRRip, BD Rip, BR Rip and BluRay Rip source markers.'
WHERE name = 'BDRip / BRRip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:Rip|DVDRip)(?=$|[\s._-])',
    description = 'Matches generic Rip and DVDRip markers.'
WHERE name = 'Rip';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:HDTV|PDTV|DSR|TVRip)(?=$|[\s._-])',
    description = 'Matches HDTV, PDTV, DSR and TVRip broadcast source markers.'
WHERE name = 'HDTV';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:UHD[\s._-]?(?:Blu[\s._-]?Ray|BD)|4K[\s._-]?(?:Blu[\s._-]?Ray|BD))(?=$|[\s._-])',
    description = 'Matches UHD BluRay, UHD-BD, 4K BluRay and 4K-BD source markers.'
WHERE name = 'UHD Bluray';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:AV1|AOMedia[\s._-]?Video[\s._-]?1)(?=$|[\s._-])',
    description = 'Matches AV1 and AOMedia Video 1 codec markers.'
WHERE name = 'AV1';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:[xh][\s._-]?264|AVC|H\.264)(?=$|[\s._-])',
    description = 'Matches H.264, h264, x264 and AVC codec markers.'
WHERE name IN ('AVC', 'x264');

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:[xh][\s._-]?265|HEVC|H\.265)(?=$|[\s._-])',
    description = 'Matches H.265, h265, x265 and HEVC codec markers.'
WHERE name IN ('HEVC', 'h265', 'x265');

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
SET pattern = '(?i)(?<=^|[\s._-])(?:DV|DoVi|Dolby[\s._-]?Vision)(?![\s._-]?(?:HLG|SDR))(?=$|[\s._-])',
    description = 'Matches DV, DoVi and Dolby Vision markers without matching DV HLG or DV SDR.'
WHERE name = 'Dolby Vision';

UPDATE regular_expressions
SET pattern = '(?i)(?<=^|[\s._-])(?:HDR(?!\d)|HDR10(?:[\s._-]?(?:\+|P|Plus))?|HLG|PQ10?|DV|DoVi|Dolby[\s._-]?Vision)(?![\s._-]?(?:SDR))(?=$|[\s._-])',
    description = 'Matches common HDR and Dolby Vision markers as a broad HDR/DV umbrella.'
WHERE name = 'Basic HDR Formats';

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
('Template Basic 1080p FR', 'Profil template 1080p simple avec une echelle maximale de 10000 points.

Les Custom Formats sont deja tries par familles pour servir de grille de depart: langue, audio, resolution, source, codec, HDR, encodes light et tiers de teams.

Modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme ou un groupe.

Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1),
('Template Basic 2160p FR', 'Profil template 2160p simple avec une echelle maximale de 10000 points.

Les Custom Formats sont deja tries par familles pour servir de grille de depart: langue, audio, resolution, source, codec, HDR, encodes light et tiers de teams.

Modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme ou un groupe.

Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1),
('Template Expert 1080p FR', 'Profil template 1080p detaille avec une echelle maximale de 10000 points.

Les Custom Formats atomiques permettent de ponderer separement audio, resolution, source, codec, HDR, encodes light, langue et tiers de teams.

Modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme ou un groupe.

Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1),
('Template Expert 2160p FR', 'Profil template 2160p detaille avec une echelle maximale de 10000 points.

Les Custom Formats atomiques permettent de ponderer separement audio, resolution, source, codec, HDR, encodes light, langue et tiers de teams.

Modifiez les scores selon votre usage. Un score de -99999 sert a bannir strictement un terme ou un groupe.

Exemple: mettre 1080p a +1000 pour valoriser la 1080p, ou 2160p a -99999 pour interdire la 4K.', 1, 0, 10000, 1);

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
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'Bluray-1080p', 0
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBDL-1080p', 1
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'WEBRip-1080p', 2
    UNION ALL SELECT 'Template Expert 1080p FR', '1080p Template', 'HDTV-1080p', 3
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
('Template Basic 2160p FR', '1080p Fallback', 0, 0),
('Template Basic 2160p FR', '2160p Template', 1, 1),
('Template Expert 2160p FR', '1080p Fallback', 0, 0),
('Template Expert 2160p FR', '2160p Template', 1, 1);

-- Basic profiles: mostly grouped CFs.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, wanted.custom_format_name, wanted.arr_type, wanted.score
FROM quality_profiles qp
JOIN (
    SELECT 'French MULTi' AS custom_format_name, 'all' AS arr_type, 2000 AS score
    UNION ALL SELECT 'French Original', 'all', 2000
    UNION ALL SELECT 'French VF', 'all', 1500
    UNION ALL SELECT 'French VOSTFR', 'all', 1000
    UNION ALL SELECT 'French VFQ', 'all', 1500
    UNION ALL SELECT 'French Missing', 'all', 500
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
    UNION ALL SELECT 'WEB Source', 'all', 3
    UNION ALL SELECT 'Disc Source', 'all', 3
    UNION ALL SELECT 'Rip Source', 'all', 2
    UNION ALL SELECT 'AV1', 'all', 4
    UNION ALL SELECT 'h264', 'all', 4
    UNION ALL SELECT 'h265', 'all', 4
    UNION ALL SELECT 'HDR / DV', 'all', 5
    UNION ALL SELECT 'IMAX', 'all', 5
    UNION ALL SELECT 'HDLight', 'all', 6
    UNION ALL SELECT '4KLight', 'all', 6
    UNION ALL SELECT 'FR Media Tier 1', 'all', 4000
    UNION ALL SELECT 'FR Media Tier 2', 'all', 3500
    UNION ALL SELECT 'FR Media Tier 3', 'all', 3000
    UNION ALL SELECT 'FR Anime Tier 1', 'all', 4000
    UNION ALL SELECT 'FR Anime Tier 2', 'all', 3500
    UNION ALL SELECT 'FR Anime Tier 3', 'all', 3000
    UNION ALL SELECT 'FR Anime FanSub', 'all', 2500
    UNION ALL SELECT 'FR Scene Unranked', 'all', 2500
    UNION ALL SELECT 'FR Low Quality / Banned', 'all', -99999
) wanted
WHERE qp.name LIKE 'Template Basic%'
  AND EXISTS (SELECT 1 FROM custom_formats cf WHERE cf.name = wanted.custom_format_name);

-- Expert profiles: atomics first, with the same small-scale score philosophy.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, wanted.custom_format_name, wanted.arr_type, wanted.score
FROM quality_profiles qp
JOIN (
    SELECT 'French MULTi' AS custom_format_name, 'all' AS arr_type, 2000 AS score
    UNION ALL SELECT 'French Original', 'all', 2000
    UNION ALL SELECT 'French Original Marker', 'all', 2000
    UNION ALL SELECT 'French VF', 'all', 1500
    UNION ALL SELECT 'French VOSTFR', 'all', 1000
    UNION ALL SELECT 'French VFQ', 'all', 1500
    UNION ALL SELECT 'French Missing', 'all', 500
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
    UNION ALL SELECT 'Bluray', 'all', 3
    UNION ALL SELECT 'WEB-DL', 'all', 3
    UNION ALL SELECT 'WEBRip', 'all', 3
    UNION ALL SELECT 'BDRip / BRRip', 'all', 2
    UNION ALL SELECT 'Rip', 'all', 2
    UNION ALL SELECT 'HDTV', 'all', 2
    UNION ALL SELECT 'AV1', 'all', 4
    UNION ALL SELECT 'h264', 'all', 4
    UNION ALL SELECT 'h265', 'all', 4
    UNION ALL SELECT 'HDR', 'all', 5
    UNION ALL SELECT 'HDR10+', 'all', 5
    UNION ALL SELECT 'HDR10', 'all', 5
    UNION ALL SELECT 'HLG', 'all', 5
    UNION ALL SELECT 'PQ', 'all', 5
    UNION ALL SELECT 'Dolby Vision', 'all', 5
    UNION ALL SELECT 'IMAX', 'all', 5
    UNION ALL SELECT 'HDLight', 'all', 6
    UNION ALL SELECT '4KLight', 'all', 6
    UNION ALL SELECT 'FR Media Tier 1', 'all', 4000
    UNION ALL SELECT 'FR Media Tier 2', 'all', 3500
    UNION ALL SELECT 'FR Media Tier 3', 'all', 3000
    UNION ALL SELECT 'FR Anime Tier 1', 'all', 4000
    UNION ALL SELECT 'FR Anime Tier 2', 'all', 3500
    UNION ALL SELECT 'FR Anime Tier 3', 'all', 3000
    UNION ALL SELECT 'FR Anime FanSub', 'all', 2500
    UNION ALL SELECT 'FR Scene Unranked', 'all', 2500
    UNION ALL SELECT 'FR Low Quality / Banned', 'all', -99999
) wanted
WHERE qp.name LIKE 'Template Expert%'
  AND EXISTS (SELECT 1 FROM custom_formats cf WHERE cf.name = wanted.custom_format_name);
-- --- END op 9008
