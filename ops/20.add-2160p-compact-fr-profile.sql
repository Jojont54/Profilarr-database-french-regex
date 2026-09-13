-- @operation: export
-- @entity: batch
-- @name: add 2160p compact fr profile
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9020

-- --- BEGIN op 9020 ( batch add 2160p compact fr profile )
-- ============================================================================
-- 2160p Compact FR
-- 4KLight-focused profile built from the same compact teams as 1080p Compact FR.
-- ============================================================================

INSERT INTO custom_formats (name, description)
VALUES
  ('FR 2160p Compact Movie Bluray Tier 1', 'FR 2160p Compact Movie Bluray Tier 1 for validated 4KLight groups.'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'FR 2160p Compact Movie Bluray Tier 2 for validated 4KLight groups.'),
  ('FR 2160p Compact Movie WEB Tier 1', 'FR 2160p Compact Movie WEB Tier 1 for validated 4KLight WEBRip groups.'),
  ('FR 2160p Compact Movie WEB Tier 2', 'FR 2160p Compact Movie WEB Tier 2 for validated 4KLight WEBRip groups.'),
  ('FR 2160p Compact TV Bluray Tier 1', 'FR 2160p Compact TV Bluray Tier 1 for validated 4KLight groups.'),
  ('FR 2160p Compact TV Bluray Tier 2', 'FR 2160p Compact TV Bluray Tier 2 for validated 4KLight groups.'),
  ('FR 2160p Compact TV WEB Tier 1', 'FR 2160p Compact TV WEB Tier 1 for validated 4KLight WEBRip groups.'),
  ('FR 2160p Compact TV WEB Tier 2', 'FR 2160p Compact TV WEB Tier 2 for validated 4KLight WEBRip groups.');

WITH compact_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
),
tags(tag_name) AS (
  VALUES ('French'), ('2160p'), ('Compact'), ('Release Group Tier')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM compact_2160p
CROSS JOIN tags;

WITH compact_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, '2160p', 'resolution', 'all', 0, 1
FROM compact_2160p;

WITH compact_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT custom_format_name, '2160p', '2160p'
FROM compact_2160p;

WITH bluray_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'Bluray', 'source', 'all', 0, 1
FROM bluray_2160p;

WITH bluray_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2')
)
INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT custom_format_name, 'Bluray', 'bluray'
FROM bluray_2160p;

WITH web_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'WEBRip', 'source', 'all', 0, 1
FROM web_2160p;

WITH web_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT custom_format_name, 'WEBRip', 'webrip'
FROM web_2160p;

WITH compact_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'x265', 'release_title', 'all', 0, 1
FROM compact_2160p;

WITH compact_2160p(custom_format_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1'),
  ('FR 2160p Compact Movie Bluray Tier 2'),
  ('FR 2160p Compact Movie WEB Tier 1'),
  ('FR 2160p Compact Movie WEB Tier 2'),
  ('FR 2160p Compact TV Bluray Tier 1'),
  ('FR 2160p Compact TV Bluray Tier 2'),
  ('FR 2160p Compact TV WEB Tier 1'),
  ('FR 2160p Compact TV WEB Tier 2')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, 'x265', 'x265 (Efficient)'
FROM compact_2160p;

WITH tier_groups(custom_format_name, regular_expression_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1', 'LiDHL'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'mHDgz'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'QTZ'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'RiFiFi'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'AMEN'),
  ('FR 2160p Compact Movie WEB Tier 1', 'LiDHL'),
  ('FR 2160p Compact Movie WEB Tier 1', 'mHDgz'),
  ('FR 2160p Compact Movie WEB Tier 1', 'QTZ'),
  ('FR 2160p Compact Movie WEB Tier 1', 'RiFiFi'),
  ('FR 2160p Compact Movie WEB Tier 1', 'AMEN'),
  ('FR 2160p Compact TV Bluray Tier 1', 'LiDHL'),
  ('FR 2160p Compact TV Bluray Tier 1', 'mHDgz'),
  ('FR 2160p Compact TV Bluray Tier 1', 'QTZ'),
  ('FR 2160p Compact TV Bluray Tier 1', 'RiFiFi'),
  ('FR 2160p Compact TV Bluray Tier 1', 'AMEN'),
  ('FR 2160p Compact TV WEB Tier 1', 'LiDHL'),
  ('FR 2160p Compact TV WEB Tier 1', 'mHDgz'),
  ('FR 2160p Compact TV WEB Tier 1', 'QTZ'),
  ('FR 2160p Compact TV WEB Tier 1', 'RiFiFi'),
  ('FR 2160p Compact TV WEB Tier 1', 'AMEN'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'AW'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'BONBON'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Floppy'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'TARDiS'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'GHT'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PiXEL'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PopHD'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'TyHD'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Winks'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Xantar'),
  ('FR 2160p Compact Movie WEB Tier 2', 'AW'),
  ('FR 2160p Compact Movie WEB Tier 2', 'BONBON'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Floppy'),
  ('FR 2160p Compact Movie WEB Tier 2', 'TARDiS'),
  ('FR 2160p Compact Movie WEB Tier 2', 'GHT'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PiXEL'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PopHD'),
  ('FR 2160p Compact Movie WEB Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact Movie WEB Tier 2', 'TyHD'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Winks'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Xantar'),
  ('FR 2160p Compact TV Bluray Tier 2', 'AW'),
  ('FR 2160p Compact TV Bluray Tier 2', 'BONBON'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Floppy'),
  ('FR 2160p Compact TV Bluray Tier 2', 'TARDiS'),
  ('FR 2160p Compact TV Bluray Tier 2', 'GHT'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PiXEL'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PopHD'),
  ('FR 2160p Compact TV Bluray Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact TV Bluray Tier 2', 'TyHD'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Winks'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Xantar'),
  ('FR 2160p Compact TV WEB Tier 2', 'AW'),
  ('FR 2160p Compact TV WEB Tier 2', 'BONBON'),
  ('FR 2160p Compact TV WEB Tier 2', 'Floppy'),
  ('FR 2160p Compact TV WEB Tier 2', 'TARDiS'),
  ('FR 2160p Compact TV WEB Tier 2', 'GHT'),
  ('FR 2160p Compact TV WEB Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact TV WEB Tier 2', 'PiXEL'),
  ('FR 2160p Compact TV WEB Tier 2', 'PopHD'),
  ('FR 2160p Compact TV WEB Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact TV WEB Tier 2', 'TyHD'),
  ('FR 2160p Compact TV WEB Tier 2', 'Winks'),
  ('FR 2160p Compact TV WEB Tier 2', 'Xantar')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, regular_expression_name, 'release_group', 'all', 0, 0
FROM tier_groups;

WITH tier_groups(custom_format_name, regular_expression_name) AS (
  VALUES
  ('FR 2160p Compact Movie Bluray Tier 1', 'LiDHL'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'mHDgz'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'QTZ'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'RiFiFi'),
  ('FR 2160p Compact Movie Bluray Tier 1', 'AMEN'),
  ('FR 2160p Compact Movie WEB Tier 1', 'LiDHL'),
  ('FR 2160p Compact Movie WEB Tier 1', 'mHDgz'),
  ('FR 2160p Compact Movie WEB Tier 1', 'QTZ'),
  ('FR 2160p Compact Movie WEB Tier 1', 'RiFiFi'),
  ('FR 2160p Compact Movie WEB Tier 1', 'AMEN'),
  ('FR 2160p Compact TV Bluray Tier 1', 'LiDHL'),
  ('FR 2160p Compact TV Bluray Tier 1', 'mHDgz'),
  ('FR 2160p Compact TV Bluray Tier 1', 'QTZ'),
  ('FR 2160p Compact TV Bluray Tier 1', 'RiFiFi'),
  ('FR 2160p Compact TV Bluray Tier 1', 'AMEN'),
  ('FR 2160p Compact TV WEB Tier 1', 'LiDHL'),
  ('FR 2160p Compact TV WEB Tier 1', 'mHDgz'),
  ('FR 2160p Compact TV WEB Tier 1', 'QTZ'),
  ('FR 2160p Compact TV WEB Tier 1', 'RiFiFi'),
  ('FR 2160p Compact TV WEB Tier 1', 'AMEN'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'AW'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'BONBON'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Floppy'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'TARDiS'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'GHT'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PiXEL'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'PopHD'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'TyHD'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Winks'),
  ('FR 2160p Compact Movie Bluray Tier 2', 'Xantar'),
  ('FR 2160p Compact Movie WEB Tier 2', 'AW'),
  ('FR 2160p Compact Movie WEB Tier 2', 'BONBON'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Floppy'),
  ('FR 2160p Compact Movie WEB Tier 2', 'TARDiS'),
  ('FR 2160p Compact Movie WEB Tier 2', 'GHT'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PiXEL'),
  ('FR 2160p Compact Movie WEB Tier 2', 'PopHD'),
  ('FR 2160p Compact Movie WEB Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact Movie WEB Tier 2', 'TyHD'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Winks'),
  ('FR 2160p Compact Movie WEB Tier 2', 'Xantar'),
  ('FR 2160p Compact TV Bluray Tier 2', 'AW'),
  ('FR 2160p Compact TV Bluray Tier 2', 'BONBON'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Floppy'),
  ('FR 2160p Compact TV Bluray Tier 2', 'TARDiS'),
  ('FR 2160p Compact TV Bluray Tier 2', 'GHT'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PiXEL'),
  ('FR 2160p Compact TV Bluray Tier 2', 'PopHD'),
  ('FR 2160p Compact TV Bluray Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact TV Bluray Tier 2', 'TyHD'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Winks'),
  ('FR 2160p Compact TV Bluray Tier 2', 'Xantar'),
  ('FR 2160p Compact TV WEB Tier 2', 'AW'),
  ('FR 2160p Compact TV WEB Tier 2', 'BONBON'),
  ('FR 2160p Compact TV WEB Tier 2', 'Floppy'),
  ('FR 2160p Compact TV WEB Tier 2', 'TARDiS'),
  ('FR 2160p Compact TV WEB Tier 2', 'GHT'),
  ('FR 2160p Compact TV WEB Tier 2', 'PATOMiEL'),
  ('FR 2160p Compact TV WEB Tier 2', 'PiXEL'),
  ('FR 2160p Compact TV WEB Tier 2', 'PopHD'),
  ('FR 2160p Compact TV WEB Tier 2', 'SANTACRUZ'),
  ('FR 2160p Compact TV WEB Tier 2', 'TyHD'),
  ('FR 2160p Compact TV WEB Tier 2', 'Winks'),
  ('FR 2160p Compact TV WEB Tier 2', 'Xantar')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, regular_expression_name, regular_expression_name
FROM tier_groups;

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('2160p Compact FR', '2160p Compact FR cible des encodes BluRay x265 de type 4K Light,
avec des fichiers plus legers.

- Taille moyenne film ~ 8 a 18 Go par film
- Classement qualite film ~ 5/10
- Taille moyenne serie ~ 3 a 6 Go par episode
- Classement qualite serie ~ 5/10', 1, 20000, 1000000, 1);

WITH tags(tag_name) AS (
  VALUES ('2160p'), ('Compact Focused'), ('French'), ('Lossy Audio'), ('h265'), ('x265')
)
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT '2160p Compact FR', tag_name
FROM tags;

INSERT INTO quality_profile_languages (quality_profile_name, language_name)
SELECT '2160p Compact FR', 'Any';

INSERT INTO quality_groups (quality_profile_name, name)
VALUES
  ('2160p Compact FR', '2160p Compact'),
  ('2160p Compact FR', '1080p Balanced'),
  ('2160p Compact FR', '720p Quality'),
  ('2160p Compact FR', '480p Quality');

WITH members(group_name, quality_name, position) AS (
  VALUES
  ('2160p Compact', 'Bluray-2160p', 0),
  ('2160p Compact', 'WEBRip-2160p', 1),
  ('1080p Balanced', 'WEBDL-1080p', 0),
  ('1080p Balanced', 'WEBRip-1080p', 1),
  ('720p Quality', 'Bluray-720p', 0),
  ('720p Quality', 'WEBDL-720p', 1),
  ('720p Quality', 'WEBRip-720p', 2),
  ('480p Quality', 'Bluray-480p', 0),
  ('480p Quality', 'Bluray-576p', 1),
  ('480p Quality', 'DVD', 2),
  ('480p Quality', 'WEBDL-480p', 3)
)
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Compact FR', group_name, quality_name, position
FROM members;

WITH profile_qualities(quality_group_name, quality_name, position, enabled, upgrade_until) AS (
  VALUES
  ('2160p Compact', NULL, 0, 1, 1),
  ('1080p Balanced', NULL, 1, 1, 0),
  (NULL, 'Bluray-1080p', 2, 1, 0),
  ('720p Quality', NULL, 3, 1, 0),
  (NULL, 'HDTV-1080p', 4, 1, 0),
  (NULL, 'HDTV-720p', 5, 1, 0),
  ('480p Quality', NULL, 6, 1, 0),
  (NULL, 'SDTV', 7, 1, 0)
)
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, quality_name, position, enabled, upgrade_until)
SELECT '2160p Compact FR', quality_group_name, quality_name, position, enabled, upgrade_until
FROM profile_qualities;

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT '2160p Compact FR', custom_format_name, arr_type, score
FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient FR'
  AND custom_format_name IN (
    '3D', '480p Bluray', '480p WEB-DL', '576p Bluray', '576p WEB-DL',
    '720p Bluray', '720p HDTV', '720p WEB-DL', '720p WEBRip',
    'AAC', 'AMZN', 'ATV', 'ATVP', 'AV1', 'Amazon Enhancement',
    'Audio Description', 'B&W', 'BCORE', 'Better Theatricals', 'CAM',
    'CRAV', 'CRIT', 'DRPO', 'DSCP', 'DSNP', 'DTS', 'DTS-ES', 'DTS-HD HRA',
    'DVD', 'DVD Remux', 'Disney+ Enhancement', 'Dolby Atmos',
    'Dolby Digital', 'Dolby Digital +', 'Dolby Vision',
    'Dolby Vision (Without Fallback)', 'Extended Edition', 'Extras',
    'FLAC', 'Full Disc', 'Full Disc (Quality Match)', 'German DL',
    'HBO', 'HBO Max Enhancement', 'HDR', 'HDR10+', 'HMAX', 'HTSR', 'HULU',
    'Lossless Audio', 'MA', 'MAX', 'MUBI', 'Movies Anywhere Enhancement',
    'Netflix Enhancement', 'NF', 'NOW', 'Opus', 'PCOK', 'PLAY', 'PMTP',
    'ROKU', 'Remux', 'SDR',
    'Repack1', 'Repack2', 'Repack3', 'SDTV', 'SHO', 'SKST', 'STAN',
    'Season Pack', 'Sing Along', 'Special Edition', 'Upscale',
    'VP9', 'VVC', 'Xvid', 'iP', 'iT', 'iTunes Enhancement',
    'x264 (2160p)'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Compact FR', 'FR 2160p Compact Movie Bluray Tier 1', 'radarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact Movie Bluray Tier 2', 'radarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact Movie WEB Tier 1', 'radarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact Movie WEB Tier 2', 'radarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact TV Bluray Tier 1', 'sonarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact TV Bluray Tier 2', 'sonarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact TV WEB Tier 1', 'sonarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact TV WEB Tier 2', 'sonarr', 969000),
  ('2160p Compact FR', '2160p WEB-DL', 'all', -999999),
  ('2160p Compact FR', '1080p WEB-DL AVC', 'radarr', 860000),
  ('2160p Compact FR', '1080p WEB-DL AVC', 'sonarr', 860000),
  ('2160p Compact FR', 'FR 1080p WEB-DL HEVC Tier 1', 'radarr', 830000),
  ('2160p Compact FR', 'FR 1080p WEB-DL HEVC Tier 1', 'sonarr', 830000),
  ('2160p Compact FR', 'FR 1080p Bluray HEVC Tier 1', 'radarr', 830000),
  ('2160p Compact FR', 'FR 1080p Bluray HEVC Tier 1', 'sonarr', 830000),
  ('2160p Compact FR', '1080p Bluray AVC', 'radarr', 840000),
  ('2160p Compact FR', '1080p HDTV', 'radarr', 80000),
  ('2160p Compact FR', '1080p HDTV', 'sonarr', 80000),
  ('2160p Compact FR', 'FR Scene Tier', 'all', 4000),
  ('2160p Compact FR', 'French MULTi', 'all', 0),
  ('2160p Compact FR', 'French Original', 'all', 0),
  ('2160p Compact FR', 'French Original Marker', 'all', 0),
  ('2160p Compact FR', 'French VF', 'all', -50000),
  ('2160p Compact FR', 'French VOSTFR', 'all', -200000),
  ('2160p Compact FR', 'French VFQ', 'all', -999999),
  ('2160p Compact FR', 'French Missing', 'all', -999999),
  ('2160p Compact FR', 'FR LQ', 'all', -999999);
-- --- END op 9020
