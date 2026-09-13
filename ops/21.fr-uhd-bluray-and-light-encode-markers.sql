-- @operation: export
-- @entity: batch
-- @name: fr uhd bluray and light encode markers
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9021

-- --- BEGIN op 9021 ( batch fr uhd bluray and light encode markers )
-- ============================================================================
-- French UHD Bluray and Light encode markers
-- French releases do not commonly use the Dictionarry/US convention where
-- "UHD Bluray" means a 1080p encode sourced from a UHD disc. Keep the 1080p
-- resolution condition from the base CF, without requiring an explicit HDR marker.
-- ============================================================================

DELETE FROM condition_patterns
WHERE custom_format_name = 'UHD Bluray'
  AND condition_name = 'HDR';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'UHD Bluray'
  AND name = 'HDR';

INSERT INTO regular_expressions (name, pattern, description)
VALUES
  (
    'HDLight',
    '(?<=^|[\s._-])(?:mHD|miniHD|microHD|HD[\s._-]?(?:Light|Lite)|Re[\s._-]?(?:Encode|Enc)|BD[\s._-]?(?:Light|Lite)|BR[\s._-]?(?:Light|Lite)|WEB[\s._-]?(?:Light|Lite))(?=$|[\s._-])',
    'Matches HDLight, mHD, miniHD, microHD, ReEnc, ReEncode, BDLight, BRLight and WEBLight markers.'
  ),
  (
    '4KLight',
    '(?<=^|[\s._-])(?:(?:4K|UHD)[\s._-]?Light|Re[\s._-]?(?:Encode|Enc)|BD[\s._-]?(?:Light|Lite)|BR[\s._-]?(?:Light|Lite)|WEB[\s._-]?(?:Light|Lite))(?=$|[\s._-])',
    'Matches 4KLight, UHDLight, ReEnc, ReEncode, BDLight, BRLight and WEBLight markers.'
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
VALUES
  ('HDLight', 'Banned'),
  ('4KLight', 'Banned');

INSERT INTO custom_formats (name, description)
VALUES
  ('HDLight', 'Matches HDLight and similar light/re-encode markers below 2160p.'),
  ('4KLight', 'Matches 4KLight and similar light/re-encode markers on 2160p releases.');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
VALUES
  ('HDLight', 'Banned'),
  ('4KLight', 'Banned');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES
  ('HDLight', 'HDLight', 'release_title', 'all', 0, 1),
  ('HDLight', 'Not 2160p', 'resolution', 'all', 1, 1),
  ('4KLight', '4KLight', 'release_title', 'all', 0, 1),
  ('4KLight', '2160p', 'resolution', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES
  ('HDLight', 'HDLight', 'HDLight'),
  ('4KLight', '4KLight', '4KLight');

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES
  ('HDLight', 'Not 2160p', '2160p'),
  ('4KLight', '2160p', '2160p');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('720p Quality FR', 'HDLight', 'all', -999999),
  ('720p Quality FR', '4KLight', 'all', -999999),
  ('1080p Quality FR', 'HDLight', 'all', -999999),
  ('1080p Quality FR', '4KLight', 'all', -999999),
  ('1080p Quality HDR FR', 'HDLight', 'all', -999999),
  ('1080p Quality HDR FR', '4KLight', 'all', -999999),
  ('2160p Quality FR', 'HDLight', 'all', -999999),
  ('2160p Quality FR', '4KLight', 'all', -999999);

-- 2160p Efficient source scores must not stack with the validated FR Efficient
-- team tiers. Replace Dictionarry's US high-trust exclusions with our FR
-- Efficient teams: TyHD, THESYNDICATE, CHiLL, SUPPLY, FW/FORWARD and TFA.
DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEB-DL AVC'
  AND condition_name IN (
    'Not QxR',
    'Not QxR Title',
    'Not TAoE',
    'Not TAoE Title',
    'Not Vyndros'
  );

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEB-DL AVC'
  AND name IN (
    'Not QxR',
    'Not QxR Title',
    'Not TAoE',
    'Not TAoE Title',
    'Not Vyndros'
  );

WITH efficient_team(condition_name, regular_expression_name) AS (
  VALUES
  ('Not TyHD', 'TyHD'),
  ('Not THESYNDICATE', 'THESYNDICATE'),
  ('Not CHiLL', 'CHiLL'),
  ('Not SUPPLY', 'SUPPLY'),
  ('Not FW', 'FW'),
  ('Not FORWARD', 'FORWARD'),
  ('Not TFA', 'TFA')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '2160p WEB-DL AVC', condition_name, 'release_group', 'all', 1, 1
FROM efficient_team;

WITH efficient_team(condition_name, regular_expression_name) AS (
  VALUES
  ('Not TyHD', 'TyHD'),
  ('Not THESYNDICATE', 'THESYNDICATE'),
  ('Not CHiLL', 'CHiLL'),
  ('Not SUPPLY', 'SUPPLY'),
  ('Not FW', 'FW'),
  ('Not FORWARD', 'FORWARD'),
  ('Not TFA', 'TFA')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '2160p WEB-DL AVC', condition_name, regular_expression_name
FROM efficient_team;

-- UHD Bluray is not a generic Efficient/Balanced target. Those profiles target
-- 2160p WEB-DL, while validated UHD Bluray groups score through their FR tiers.
DELETE FROM condition_patterns
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM condition_resolutions
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM condition_sources
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM custom_format_conditions
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM custom_format_tags
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM custom_formats
WHERE name IN ('UHD Bluray (Efficient)', 'UHD Bluray (FR Validated)');

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM custom_format_tags
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM condition_patterns
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM condition_sources
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM condition_resolutions
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM custom_formats
WHERE name IN (
  'FR 2160p Efficient Movie Bluray Tier 1',
  'FR 2160p Efficient Movie WEB Tier 1',
  'FR 2160p Efficient TV Bluray Tier 1',
  'FR 2160p Efficient TV WEB Tier 1'
);

DELETE FROM condition_patterns
WHERE custom_format_name = 'FR Scene Tier'
  AND condition_name IN ('FLOP', 'FRATERNiTY', 'FoX', 'Psaro');

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'FR Scene Tier'
  AND name IN ('FLOP', 'FRATERNiTY', 'FoX', 'Psaro');

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM custom_format_tags
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM condition_patterns
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM condition_sources
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM condition_resolutions
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'FR 2160p Balanced Tier 1';

DELETE FROM custom_formats
WHERE name = 'FR 2160p Balanced Tier 1';

-- Remove obsolete profile-specific 2160p WEB-DL CFs. The shared AVC source CF
-- is configured by the following operations.
DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM custom_format_tags
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM condition_sources
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM condition_resolutions
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM custom_formats
WHERE name = '2160p WEB-DL (Efficient/Balanced)';

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM custom_format_tags
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM condition_sources
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM condition_resolutions
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEB-DL (Balanced)';

DELETE FROM custom_formats
WHERE name = '2160p WEB-DL (Balanced)';

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced FR'
  AND custom_format_name IN (
    'UHD Bluray',
    '2160p WEB-DL',
    '2160p WEB-DL (Efficient/Balanced)',
    '2160p WEB-DL (Balanced)'
  );

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN (
    '1080p Balanced FR',
    '1080p Efficient FR',
    '2160p Balanced FR',
    '2160p Efficient FR'
  )
  AND custom_format_name IN ('HDLight', '4KLight');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Balanced FR', 'HDLight', 'all', -50000),
  ('1080p Balanced FR', '4KLight', 'all', -50000),
  ('1080p Efficient FR', 'HDLight', 'all', -50000),
  ('1080p Efficient FR', '4KLight', 'all', -50000),
  ('2160p Balanced FR', 'HDLight', 'all', -50000),
  ('2160p Balanced FR', '4KLight', 'all', -50000),
  ('2160p Efficient FR', 'HDLight', 'all', -50000),
  ('2160p Efficient FR', '4KLight', 'all', -50000);

-- Generic Compact Light source scores for releases outside the Compact team
-- tiers. Tiered Compact teams are excluded so they do not double-score.
INSERT INTO custom_formats (name, description)
VALUES
  ('2160p 4KLight Bluray', 'Matches non-tier 2160p 4KLight Bluray releases for 2160p Compact FR.'),
  ('2160p 4KLight WEBRip', 'Matches non-tier 2160p 4KLight WEBRip releases for 2160p Compact FR.'),
  ('1080p HDLight Bluray', 'Matches non-tier 1080p HDLight Bluray releases for 1080p Compact FR.'),
  ('1080p HDLight WEBRip', 'Matches non-tier 1080p HDLight WEB-DL or WEBRip releases for 1080p Compact FR.'),
  ('1080p WEBRip (Compact)', 'Matches non-tier 1080p WEBRip releases for Compact FR fallback.');

WITH compact_light_cf(custom_format_name) AS (
  VALUES
  ('2160p 4KLight Bluray'),
  ('2160p 4KLight WEBRip'),
  ('1080p HDLight Bluray'),
  ('1080p HDLight WEBRip'),
  ('1080p WEBRip (Compact)')
),
tags(tag_name) AS (
  VALUES ('French'), ('Compact'), ('Source')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM compact_light_cf
CROSS JOIN tags;

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES
  ('2160p 4KLight Bluray', '4KLight', 'release_title', 'all', 0, 1),
  ('2160p 4KLight Bluray', '2160p', 'resolution', 'all', 0, 1),
  ('2160p 4KLight Bluray', 'Bluray', 'source', 'all', 0, 1),
  ('2160p 4KLight WEBRip', '4KLight', 'release_title', 'all', 0, 1),
  ('2160p 4KLight WEBRip', '2160p', 'resolution', 'all', 0, 1),
  ('2160p 4KLight WEBRip', 'WEBRip', 'source', 'all', 0, 1),
  ('1080p HDLight Bluray', 'HDLight', 'release_title', 'all', 0, 1),
  ('1080p HDLight Bluray', '1080p', 'resolution', 'all', 0, 1),
  ('1080p HDLight Bluray', 'Bluray', 'source', 'all', 0, 1),
  ('1080p HDLight WEBRip', 'HDLight', 'release_title', 'all', 0, 1),
  ('1080p HDLight WEBRip', '1080p', 'resolution', 'all', 0, 1),
  ('1080p HDLight WEBRip', 'WEB-DL', 'source', 'all', 0, 0),
  ('1080p HDLight WEBRip', 'WEBRip', 'source', 'all', 0, 0),
  ('1080p WEBRip (Compact)', '1080p', 'resolution', 'all', 0, 1),
  ('1080p WEBRip (Compact)', 'WEBRip', 'source', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES
  ('2160p 4KLight Bluray', '4KLight', '4KLight'),
  ('2160p 4KLight WEBRip', '4KLight', '4KLight'),
  ('1080p HDLight Bluray', 'HDLight', 'HDLight'),
  ('1080p HDLight WEBRip', 'HDLight', 'HDLight');

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES
  ('2160p 4KLight Bluray', '2160p', '2160p'),
  ('2160p 4KLight WEBRip', '2160p', '2160p'),
  ('1080p HDLight Bluray', '1080p', '1080p'),
  ('1080p HDLight WEBRip', '1080p', '1080p'),
  ('1080p WEBRip (Compact)', '1080p', '1080p');

INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES
  ('2160p 4KLight Bluray', 'Bluray', 'bluray'),
  ('2160p 4KLight WEBRip', 'WEBRip', 'webrip'),
  ('1080p HDLight Bluray', 'Bluray', 'bluray'),
  ('1080p HDLight WEBRip', 'WEB-DL', 'web_dl'),
  ('1080p HDLight WEBRip', 'WEBRip', 'webrip'),
  ('1080p WEBRip (Compact)', 'WEBRip', 'webrip');

WITH compact_cf_team(custom_format_name, condition_name, regular_expression_name) AS (
  VALUES
  ('2160p 4KLight Bluray', 'Not AMEN', 'AMEN'),
  ('2160p 4KLight Bluray', 'Not AW', 'AW'),
  ('2160p 4KLight Bluray', 'Not BONBON', 'BONBON'),
  ('2160p 4KLight Bluray', 'Not GHT', 'GHT'),
  ('2160p 4KLight Bluray', 'Not LiDHL', 'LiDHL'),
  ('2160p 4KLight Bluray', 'Not mHDgz', 'mHDgz'),
  ('2160p 4KLight Bluray', 'Not PATOMiEL', 'PATOMiEL'),
  ('2160p 4KLight Bluray', 'Not PiXEL', 'PiXEL'),
  ('2160p 4KLight Bluray', 'Not PopHD', 'PopHD'),
  ('2160p 4KLight Bluray', 'Not QTZ', 'QTZ'),
  ('2160p 4KLight Bluray', 'Not RiFiFi', 'RiFiFi'),
  ('2160p 4KLight Bluray', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('2160p 4KLight Bluray', 'Not TyHD', 'TyHD'),
  ('2160p 4KLight Bluray', 'Not Winks', 'Winks'),
  ('2160p 4KLight Bluray', 'Not Xantar', 'Xantar'),
  ('2160p 4KLight WEBRip', 'Not AMEN', 'AMEN'),
  ('2160p 4KLight WEBRip', 'Not AW', 'AW'),
  ('2160p 4KLight WEBRip', 'Not BONBON', 'BONBON'),
  ('2160p 4KLight WEBRip', 'Not GHT', 'GHT'),
  ('2160p 4KLight WEBRip', 'Not LiDHL', 'LiDHL'),
  ('2160p 4KLight WEBRip', 'Not mHDgz', 'mHDgz'),
  ('2160p 4KLight WEBRip', 'Not PATOMiEL', 'PATOMiEL'),
  ('2160p 4KLight WEBRip', 'Not PiXEL', 'PiXEL'),
  ('2160p 4KLight WEBRip', 'Not PopHD', 'PopHD'),
  ('2160p 4KLight WEBRip', 'Not QTZ', 'QTZ'),
  ('2160p 4KLight WEBRip', 'Not RiFiFi', 'RiFiFi'),
  ('2160p 4KLight WEBRip', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('2160p 4KLight WEBRip', 'Not TyHD', 'TyHD'),
  ('2160p 4KLight WEBRip', 'Not Winks', 'Winks'),
  ('2160p 4KLight WEBRip', 'Not Xantar', 'Xantar'),
  ('1080p HDLight Bluray', 'Not AW', 'AW'),
  ('1080p HDLight Bluray', 'Not GHT', 'GHT'),
  ('1080p HDLight Bluray', 'Not LiDHL', 'LiDHL'),
  ('1080p HDLight Bluray', 'Not mHDgz', 'mHDgz'),
  ('1080p HDLight Bluray', 'Not PATOMiEL', 'PATOMiEL'),
  ('1080p HDLight Bluray', 'Not PiXEL', 'PiXEL'),
  ('1080p HDLight Bluray', 'Not PopHD', 'PopHD'),
  ('1080p HDLight Bluray', 'Not QTZ', 'QTZ'),
  ('1080p HDLight Bluray', 'Not RiFiFi', 'RiFiFi'),
  ('1080p HDLight Bluray', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('1080p HDLight Bluray', 'Not Winks', 'Winks'),
  ('1080p HDLight Bluray', 'Not Xantar', 'Xantar'),
  ('1080p HDLight WEBRip', 'Not AW', 'AW'),
  ('1080p HDLight WEBRip', 'Not GHT', 'GHT'),
  ('1080p HDLight WEBRip', 'Not LiDHL', 'LiDHL'),
  ('1080p HDLight WEBRip', 'Not mHDgz', 'mHDgz'),
  ('1080p HDLight WEBRip', 'Not PATOMiEL', 'PATOMiEL'),
  ('1080p HDLight WEBRip', 'Not PiXEL', 'PiXEL'),
  ('1080p HDLight WEBRip', 'Not PopHD', 'PopHD'),
  ('1080p HDLight WEBRip', 'Not QTZ', 'QTZ'),
  ('1080p HDLight WEBRip', 'Not RiFiFi', 'RiFiFi'),
  ('1080p HDLight WEBRip', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('1080p HDLight WEBRip', 'Not Winks', 'Winks'),
  ('1080p HDLight WEBRip', 'Not Xantar', 'Xantar')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, 'release_group', 'all', 1, 1
FROM compact_cf_team;

WITH compact_cf_team(custom_format_name, condition_name, regular_expression_name) AS (
  VALUES
  ('2160p 4KLight Bluray', 'Not AMEN', 'AMEN'),
  ('2160p 4KLight Bluray', 'Not AW', 'AW'),
  ('2160p 4KLight Bluray', 'Not BONBON', 'BONBON'),
  ('2160p 4KLight Bluray', 'Not GHT', 'GHT'),
  ('2160p 4KLight Bluray', 'Not LiDHL', 'LiDHL'),
  ('2160p 4KLight Bluray', 'Not mHDgz', 'mHDgz'),
  ('2160p 4KLight Bluray', 'Not PATOMiEL', 'PATOMiEL'),
  ('2160p 4KLight Bluray', 'Not PiXEL', 'PiXEL'),
  ('2160p 4KLight Bluray', 'Not PopHD', 'PopHD'),
  ('2160p 4KLight Bluray', 'Not QTZ', 'QTZ'),
  ('2160p 4KLight Bluray', 'Not RiFiFi', 'RiFiFi'),
  ('2160p 4KLight Bluray', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('2160p 4KLight Bluray', 'Not TyHD', 'TyHD'),
  ('2160p 4KLight Bluray', 'Not Winks', 'Winks'),
  ('2160p 4KLight Bluray', 'Not Xantar', 'Xantar'),
  ('2160p 4KLight WEBRip', 'Not AMEN', 'AMEN'),
  ('2160p 4KLight WEBRip', 'Not AW', 'AW'),
  ('2160p 4KLight WEBRip', 'Not BONBON', 'BONBON'),
  ('2160p 4KLight WEBRip', 'Not GHT', 'GHT'),
  ('2160p 4KLight WEBRip', 'Not LiDHL', 'LiDHL'),
  ('2160p 4KLight WEBRip', 'Not mHDgz', 'mHDgz'),
  ('2160p 4KLight WEBRip', 'Not PATOMiEL', 'PATOMiEL'),
  ('2160p 4KLight WEBRip', 'Not PiXEL', 'PiXEL'),
  ('2160p 4KLight WEBRip', 'Not PopHD', 'PopHD'),
  ('2160p 4KLight WEBRip', 'Not QTZ', 'QTZ'),
  ('2160p 4KLight WEBRip', 'Not RiFiFi', 'RiFiFi'),
  ('2160p 4KLight WEBRip', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('2160p 4KLight WEBRip', 'Not TyHD', 'TyHD'),
  ('2160p 4KLight WEBRip', 'Not Winks', 'Winks'),
  ('2160p 4KLight WEBRip', 'Not Xantar', 'Xantar'),
  ('1080p HDLight Bluray', 'Not AW', 'AW'),
  ('1080p HDLight Bluray', 'Not GHT', 'GHT'),
  ('1080p HDLight Bluray', 'Not LiDHL', 'LiDHL'),
  ('1080p HDLight Bluray', 'Not mHDgz', 'mHDgz'),
  ('1080p HDLight Bluray', 'Not PATOMiEL', 'PATOMiEL'),
  ('1080p HDLight Bluray', 'Not PiXEL', 'PiXEL'),
  ('1080p HDLight Bluray', 'Not PopHD', 'PopHD'),
  ('1080p HDLight Bluray', 'Not QTZ', 'QTZ'),
  ('1080p HDLight Bluray', 'Not RiFiFi', 'RiFiFi'),
  ('1080p HDLight Bluray', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('1080p HDLight Bluray', 'Not Winks', 'Winks'),
  ('1080p HDLight Bluray', 'Not Xantar', 'Xantar'),
  ('1080p HDLight WEBRip', 'Not AW', 'AW'),
  ('1080p HDLight WEBRip', 'Not GHT', 'GHT'),
  ('1080p HDLight WEBRip', 'Not LiDHL', 'LiDHL'),
  ('1080p HDLight WEBRip', 'Not mHDgz', 'mHDgz'),
  ('1080p HDLight WEBRip', 'Not PATOMiEL', 'PATOMiEL'),
  ('1080p HDLight WEBRip', 'Not PiXEL', 'PiXEL'),
  ('1080p HDLight WEBRip', 'Not PopHD', 'PopHD'),
  ('1080p HDLight WEBRip', 'Not QTZ', 'QTZ'),
  ('1080p HDLight WEBRip', 'Not RiFiFi', 'RiFiFi'),
  ('1080p HDLight WEBRip', 'Not SANTACRUZ', 'SANTACRUZ'),
  ('1080p HDLight WEBRip', 'Not Winks', 'Winks'),
  ('1080p HDLight WEBRip', 'Not Xantar', 'Xantar')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regular_expression_name
FROM compact_cf_team;

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '1080p WEBRip (Compact)', name, type, arr_type, negate, required
FROM custom_format_conditions
WHERE custom_format_name = '1080p HDLight WEBRip'
  AND type = 'release_group';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p WEBRip (Compact)', condition_name, regular_expression_name
FROM condition_patterns
WHERE custom_format_name = '1080p HDLight WEBRip'
  AND condition_name LIKE 'Not %';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Compact FR', '2160p 4KLight Bluray', 'all', 940000),
  ('2160p Compact FR', '2160p 4KLight WEBRip', 'all', 900000),
  ('1080p Compact FR', '1080p HDLight Bluray', 'all', 900000),
  ('1080p Compact FR', '1080p HDLight WEBRip', 'all', 870000),
  ('1080p Compact FR', '1080p WEBRip (Compact)', 'all', 865000),
  ('2160p Compact FR', '1080p WEBRip (Compact)', 'all', 865000);

UPDATE quality_profile_custom_formats
SET score = 860000
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name = '1080p WEB-DL AVC';

UPDATE quality_profile_custom_formats
SET score = 4000
WHERE quality_profile_name IN (
    '1080p Balanced FR',
    '1080p Compact FR',
    '1080p Efficient FR',
    '1080p Remux FR',
    '2160p Balanced FR',
    '2160p Compact FR',
    '2160p Efficient FR',
    '2160p Quality FR',
    '2160p Remux FR'
  )
  AND custom_format_name = 'FR Scene Tier';

UPDATE quality_profile_custom_formats
SET score = 15000
WHERE quality_profile_name = '1080p Compact FR'
  AND custom_format_name = 'FR Scene Tier';

UPDATE custom_formats
SET name = REPLACE(name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE name LIKE 'FR 1080p Compact Movie %';

UPDATE quality_profile_custom_formats
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

UPDATE custom_format_tags
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

UPDATE custom_format_conditions
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

UPDATE condition_patterns
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

UPDATE condition_resolutions
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

UPDATE condition_sources
SET custom_format_name = REPLACE(custom_format_name, 'FR 1080p Compact Movie ', 'FR 1080p Compact ')
WHERE custom_format_name LIKE 'FR 1080p Compact Movie %';

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact FR'
  AND custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM condition_resolutions
WHERE custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM condition_sources
WHERE custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM custom_format_tags
WHERE custom_format_name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

DELETE FROM custom_formats
WHERE name IN (
    'FR 1080p Compact TV Bluray Tier 1',
    'FR 1080p Compact TV Bluray Tier 2',
    'FR 1080p Compact TV WEB Tier 1',
    'FR 1080p Compact TV WEB Tier 2'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Compact FR', 'FR 1080p Compact Bluray Tier 1', 'sonarr', 943000),
  ('1080p Compact FR', 'FR 1080p Compact Bluray Tier 2', 'sonarr', 942000),
  ('1080p Compact FR', 'FR 1080p Compact WEB Tier 1', 'sonarr', 883000),
  ('1080p Compact FR', 'FR 1080p Compact WEB Tier 2', 'sonarr', 882000);

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = '720p WEBRip'
  AND arr_type = 'radarr'
  AND quality_profile_name IN (
    '1080p Balanced FR',
    '1080p Compact FR',
    '1080p Efficient FR',
    '1080p Quality FR',
    '1080p Quality HDR FR',
    '1080p Remux FR',
    '2160p Balanced FR',
    '2160p Efficient FR',
    '2160p Quality FR',
    '2160p Remux FR',
    '720p Quality FR'
  );

UPDATE custom_formats
SET name = REPLACE(name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE name LIKE 'FR 2160p Compact Movie %';

UPDATE quality_profile_custom_formats
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE custom_format_tags
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE custom_format_conditions
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE condition_patterns
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE condition_resolutions
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE condition_sources
SET custom_format_name = REPLACE(custom_format_name, 'FR 2160p Compact Movie ', 'FR 2160p Compact ')
WHERE custom_format_name LIKE 'FR 2160p Compact Movie %';

UPDATE custom_formats
SET description = REPLACE(description, 'Movie ', '')
WHERE name LIKE 'FR 2160p Compact %';

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM condition_resolutions
WHERE custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM condition_sources
WHERE custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM custom_format_tags
WHERE custom_format_name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM custom_formats
WHERE name IN (
    'FR 2160p Compact TV Bluray Tier 1',
    'FR 2160p Compact TV Bluray Tier 2',
    'FR 2160p Compact TV WEB Tier 1',
    'FR 2160p Compact TV WEB Tier 2'
  );

DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR 2160p Compact Bluray Tier 1',
    'FR 2160p Compact Bluray Tier 2',
    'FR 2160p Compact WEB Tier 1',
    'FR 2160p Compact WEB Tier 2'
  )
  AND condition_name = '4KLight';

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR 2160p Compact Bluray Tier 1',
    'FR 2160p Compact Bluray Tier 2',
    'FR 2160p Compact WEB Tier 1',
    'FR 2160p Compact WEB Tier 2'
  )
  AND name = '4KLight';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES
  ('FR 2160p Compact Bluray Tier 1', '4KLight', 'release_title', 'all', 0, 1),
  ('FR 2160p Compact Bluray Tier 2', '4KLight', 'release_title', 'all', 0, 1),
  ('FR 2160p Compact WEB Tier 1', '4KLight', 'release_title', 'all', 0, 1),
  ('FR 2160p Compact WEB Tier 2', '4KLight', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES
  ('FR 2160p Compact Bluray Tier 1', '4KLight', '4KLight'),
  ('FR 2160p Compact Bluray Tier 2', '4KLight', '4KLight'),
  ('FR 2160p Compact WEB Tier 1', '4KLight', '4KLight'),
  ('FR 2160p Compact WEB Tier 2', '4KLight', '4KLight');

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name IN (
    'FR 2160p Compact Bluray Tier 1',
    'FR 2160p Compact Bluray Tier 2',
    'FR 2160p Compact WEB Tier 1',
    'FR 2160p Compact WEB Tier 2',
    'FR 1080p Compact Bluray Tier 1',
    'FR 1080p Compact Bluray Tier 2',
    'FR 1080p Compact WEB Tier 1',
    'FR 1080p Compact WEB Tier 2',
    '1080p Bluray AVC'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Compact FR', 'FR 2160p Compact Bluray Tier 1', 'radarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact Bluray Tier 1', 'sonarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact Bluray Tier 2', 'radarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact Bluray Tier 2', 'sonarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact WEB Tier 1', 'radarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact WEB Tier 1', 'sonarr', 970000),
  ('2160p Compact FR', 'FR 2160p Compact WEB Tier 2', 'radarr', 969000),
  ('2160p Compact FR', 'FR 2160p Compact WEB Tier 2', 'sonarr', 969000),
  ('2160p Compact FR', 'FR 1080p Compact Bluray Tier 1', 'radarr', 830000),
  ('2160p Compact FR', 'FR 1080p Compact Bluray Tier 1', 'sonarr', 830000),
  ('2160p Compact FR', 'FR 1080p Compact Bluray Tier 2', 'radarr', 829000),
  ('2160p Compact FR', 'FR 1080p Compact Bluray Tier 2', 'sonarr', 829000),
  ('2160p Compact FR', 'FR 1080p Compact WEB Tier 1', 'radarr', 830000),
  ('2160p Compact FR', 'FR 1080p Compact WEB Tier 1', 'sonarr', 830000),
  ('2160p Compact FR', 'FR 1080p Compact WEB Tier 2', 'radarr', 829000),
  ('2160p Compact FR', 'FR 1080p Compact WEB Tier 2', 'sonarr', 829000),
  ('2160p Compact FR', '1080p Bluray AVC', 'radarr', 840000),
  ('2160p Compact FR', '1080p Bluray AVC', 'sonarr', 840000);

UPDATE quality_profile_custom_formats
SET score = 50000
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name IN (
    'FR 1080p WEB-DL HEVC Tier 1',
    'FR 1080p Bluray HEVC Tier 1'
  );

UPDATE quality_profile_custom_formats
SET score = 820000
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name = '1080p WEBRip (Compact)';
-- --- END op 9021
