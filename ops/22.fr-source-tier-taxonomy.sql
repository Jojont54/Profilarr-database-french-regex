-- @operation: export
-- @entity: batch
-- @name: fr source tier taxonomy
-- @exportedAt: 2026-05-30T00:00:00.000Z
-- @opIds: 9022

-- --- BEGIN op 9022 ( batch fr source tier taxonomy )
-- Rebuild the reusable French historical tiers around source-specific buckets.
-- Global and Movie/TV split tiers are retired in favour of WEB, Bluray,
-- UHD Bluray, Light, DVD and Unknown tiers. WEB Top Tier is kept separate
-- from WEB Tier 1.

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'ALPIATE', '(?<=^|[\s.-])ALPIATE\b', 'Matches "ALPIATE" when preceded by whitespace, a hyphen or dot'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'ALPIATE');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT 'ALPIATE', 'French'
WHERE EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'ALPIATE')
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags
    WHERE regular_expression_name = 'ALPIATE' AND tag_name = 'French'
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT 'ALPIATE', 'Release Group'
WHERE EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'ALPIATE')
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags
    WHERE regular_expression_name = 'ALPIATE' AND tag_name = 'Release Group'
  );

WITH new_cf(name, description) AS (
  VALUES
  ('FR WEB Top Tier', 'Matches the most trusted French WEB release groups. Kept separate from FR WEB Tier 1.'),
  ('FR WEB Tier 1', 'Matches trusted French WEB release groups.'),
  ('FR WEB Tier 2', 'Matches good French WEB release groups.'),
  ('FR WEB Tier 3', 'Matches acceptable French WEB release groups.'),
  ('FR Bluray Tier 1', 'Matches trusted French Bluray release groups.'),
  ('FR Bluray Tier 2', 'Matches good French Bluray release groups.'),
  ('FR UHD Bluray Tier 1', 'Matches trusted French UHD Bluray release groups.'),
  ('FR UHD Bluray Tier 2', 'Matches good French UHD Bluray release groups.'),
  ('FR Light Tier 1', 'Matches trusted French HDLight/4KLight release groups.'),
  ('FR Light Tier 2', 'Matches good French HDLight/4KLight release groups.'),
  ('FR DVD Tier 1', 'Matches trusted French DVD release groups.'),
  ('FR Unknown Tier 1', 'Matches French release groups kept without a precise source bucket yet.')
)
INSERT INTO custom_formats (name, description)
SELECT name, description
FROM new_cf
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE custom_formats.name = new_cf.name);

WITH new_cf(custom_format_name) AS (
  VALUES
  ('FR WEB Top Tier'),
  ('FR WEB Tier 1'),
  ('FR WEB Tier 2'),
  ('FR WEB Tier 3'),
  ('FR Bluray Tier 1'),
  ('FR Bluray Tier 2'),
  ('FR UHD Bluray Tier 1'),
  ('FR UHD Bluray Tier 2'),
  ('FR Light Tier 1'),
  ('FR Light Tier 2'),
  ('FR DVD Tier 1'),
  ('FR Unknown Tier 1')
),
tag(tag_name) AS (
  VALUES ('French'), ('Release Group'), ('Release Group Tier')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT new_cf.custom_format_name, tag.tag_name
FROM new_cf CROSS JOIN tag
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_tags
  WHERE custom_format_name = new_cf.custom_format_name
    AND tag_name = tag.tag_name
);

WITH source_tag(custom_format_name, tag_name) AS (
  VALUES
  ('FR WEB Top Tier', 'WEB-DL'),
  ('FR WEB Tier 1', 'WEB-DL'),
  ('FR WEB Tier 2', 'WEB-DL'),
  ('FR WEB Tier 3', 'WEB-DL'),
  ('FR Bluray Tier 1', 'Bluray'),
  ('FR Bluray Tier 2', 'Bluray'),
  ('FR UHD Bluray Tier 1', 'Bluray'),
  ('FR UHD Bluray Tier 2', 'Bluray'),
  ('FR Light Tier 1', 'WEB-DL'),
  ('FR Light Tier 2', 'WEB-DL')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM source_tag
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_tags
  WHERE custom_format_name = source_tag.custom_format_name
    AND tag_name = source_tag.tag_name
);

WITH uhd_tag(custom_format_name, tag_name) AS (
  VALUES
  ('FR UHD Bluray Tier 1', '2160p'),
  ('FR UHD Bluray Tier 2', '2160p')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM uhd_tag
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_tags
  WHERE custom_format_name = uhd_tag.custom_format_name
    AND tag_name = uhd_tag.tag_name
);

WITH web_cf(custom_format_name) AS (
  VALUES
  ('FR WEB Top Tier'),
  ('FR WEB Tier 1'),
  ('FR WEB Tier 2'),
  ('FR WEB Tier 3')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'WEB Source', 'release_title', 'all', 0, 1
FROM web_cf
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = web_cf.custom_format_name AND name = 'WEB Source'
);

WITH web_cf(custom_format_name) AS (
  VALUES
  ('FR WEB Top Tier'),
  ('FR WEB Tier 1'),
  ('FR WEB Tier 2'),
  ('FR WEB Tier 3')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, 'WEB Source', 'WEB Source'
FROM web_cf
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = web_cf.custom_format_name
    AND condition_name = 'WEB Source'
);

WITH bluray_cf(custom_format_name) AS (
  VALUES
  ('FR Bluray Tier 1'),
  ('FR Bluray Tier 2'),
  ('FR UHD Bluray Tier 1'),
  ('FR UHD Bluray Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, 'Bluray', 'source', 'all', 0, 1
FROM bluray_cf
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = bluray_cf.custom_format_name AND name = 'Bluray'
);

WITH bluray_cf(custom_format_name) AS (
  VALUES
  ('FR Bluray Tier 1'),
  ('FR Bluray Tier 2'),
  ('FR UHD Bluray Tier 1'),
  ('FR UHD Bluray Tier 2')
)
INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT custom_format_name, 'Bluray', 'bluray'
FROM bluray_cf
WHERE NOT EXISTS (
  SELECT 1 FROM condition_sources
  WHERE custom_format_name = bluray_cf.custom_format_name
    AND condition_name = 'Bluray'
);

WITH uhd_cf(custom_format_name) AS (
  VALUES
  ('FR UHD Bluray Tier 1'),
  ('FR UHD Bluray Tier 2')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, '2160p', 'resolution', 'all', 0, 1
FROM uhd_cf
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = uhd_cf.custom_format_name AND name = '2160p'
);

WITH uhd_cf(custom_format_name) AS (
  VALUES
  ('FR UHD Bluray Tier 1'),
  ('FR UHD Bluray Tier 2')
)
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT custom_format_name, '2160p', '2160p'
FROM uhd_cf
WHERE NOT EXISTS (
  SELECT 1 FROM condition_resolutions
  WHERE custom_format_name = uhd_cf.custom_format_name
    AND condition_name = '2160p'
);

WITH uhd_gate(custom_format_name, condition_name, regex_name) AS (
  VALUES
  ('FR UHD Bluray Tier 1', 'Not Remux', 'Remux'),
  ('FR UHD Bluray Tier 1', 'Not SDR', 'SDR'),
  ('FR UHD Bluray Tier 2', 'Not Remux', 'Remux'),
  ('FR UHD Bluray Tier 2', 'Not SDR', 'SDR')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, 'release_title', 'all', 1, 1
FROM uhd_gate
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = uhd_gate.custom_format_name
    AND name = uhd_gate.condition_name
);

WITH uhd_gate(custom_format_name, condition_name, regex_name) AS (
  VALUES
  ('FR UHD Bluray Tier 1', 'Not Remux', 'Remux'),
  ('FR UHD Bluray Tier 1', 'Not SDR', 'SDR'),
  ('FR UHD Bluray Tier 2', 'Not Remux', 'Remux'),
  ('FR UHD Bluray Tier 2', 'Not SDR', 'SDR')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regex_name
FROM uhd_gate
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = uhd_gate.custom_format_name
    AND condition_name = uhd_gate.condition_name
);

-- Team membership. Release-group conditions stay optional so each CF behaves as
-- an OR list of teams, while source gates above remain required where needed.
WITH team(custom_format_name, condition_name, regex_name) AS (
  VALUES
  ('FR WEB Top Tier', 'FW', 'FW'),
  ('FR WEB Top Tier', 'FORWARD', 'FORWARD'),
  ('FR WEB Top Tier', 'CHiLL', 'CHiLL'),
  ('FR WEB Top Tier', 'TyHD', 'TyHD'),
  ('FR WEB Top Tier', 'TFA', 'TFA'),
  ('FR WEB Top Tier', 'THESYNDICATE', 'THESYNDICATE'),
  ('FR WEB Tier 1', 'BONBON', 'BONBON'),
  ('FR WEB Tier 1', 'FCK', 'FCK'),
  ('FR WEB Tier 1', 'FoX', 'FoX'),
  ('FR WEB Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR WEB Tier 1', 'FrIeNdS', 'FrIeNdS'),
  ('FR WEB Tier 1', 'MOONLY', 'MOONLY'),
  ('FR WEB Tier 1', 'MTDK', 'MTDK'),
  ('FR WEB Tier 1', 'NoLo', 'NoLo'),
  ('FR WEB Tier 1', 'OZEF', 'OZEF'),
  ('FR WEB Tier 1', 'PATOPESTO', 'PATOPESTO'),
  ('FR WEB Tier 1', 'Psaro', 'Psaro'),
  ('FR WEB Tier 1', 'RG', 'RG'),
  ('FR WEB Tier 1', 'SUPPLY', 'SUPPLY'),
  ('FR WEB Tier 1', 'TiNA', 'TiNA'),
  ('FR WEB Tier 2', 'ALLDAYiN', 'ALLDAYiN'),
  ('FR WEB Tier 2', 'ARK01', 'ARK01'),
  ('FR WEB Tier 2', 'BOUBA', 'BOUBA'),
  ('FR WEB Tier 2', 'COLL3CTiF', 'COLL3CTiF'),
  ('FR WEB Tier 2', 'FiND', 'FiND'),
  ('FR WEB Tier 2', 'HeavyWeight', 'HeavyWeight'),
  ('FR WEB Tier 2', 'N3ZUKO', 'N3ZUKO'),
  ('FR WEB Tier 2', 'NEO', 'NEO'),
  ('FR WEB Tier 2', 'NEOSTARK', 'NEOSTARK'),
  ('FR WEB Tier 2', 'NoNE', 'NoNE'),
  ('FR WEB Tier 2', 'ONLYMOViE', 'ONLYMOViE'),
  ('FR WEB Tier 2', 'pERsO', 'pERsO'),
  ('FR WEB Tier 2', 'POTO', 'POTO'),
  ('FR WEB Tier 2', 'R3MIX', 'R3MIX'),
  ('FR WEB Tier 2', 'RiPiT', 'RiPiT'),
  ('FR WEB Tier 2', 'Slay3R', 'Slay3R'),
  ('FR WEB Tier 2', 'SUPERFLU', 'SUPERFLU'),
  ('FR WEB Tier 2', 'TAT', 'TAT'),
  ('FR WEB Tier 2', 'TkHD', 'TkHD'),
  ('FR WEB Tier 2', 'TLC', 'TLC'),
  ('FR WEB Tier 2', 'TMB', 'TMB'),
  ('FR WEB Tier 2', 'WaCkS', 'WaCkS'),
  ('FR WEB Tier 3', 'BraD', 'BraD'),
  ('FR WEB Tier 3', 'BOUC', 'BOUC'),
  ('FR WEB Tier 3', 'dRuIdE', 'dRuIdE'),
  ('FR WEB Tier 3', 'ENIGMA', 'ENIGMA'),
  ('FR WEB Tier 3', 'FTMVHD', 'FTMVHD'),
  ('FR WEB Tier 3', 'LAZARUS', 'LAZARUS'),
  ('FR WEB Tier 3', 'MYSTERiON', 'MYSTERiON'),
  ('FR WEB Tier 3', 'Scaph', 'Scaph'),
  ('FR WEB Tier 3', 'WQM', 'WQM'),
  ('FR Bluray Tier 1', 'ARK01', 'ARK01'),
  ('FR Bluray Tier 1', 'BDHD', 'BDHD'),
  ('FR Bluray Tier 1', 'BONBON', 'BONBON'),
  ('FR Bluray Tier 1', 'FoX', 'FoX'),
  ('FR Bluray Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR Bluray Tier 1', 'FrIeNdS', 'FrIeNdS'),
  ('FR Bluray Tier 1', 'FTMVHD', 'FTMVHD'),
  ('FR Bluray Tier 1', 'HeavyWeight', 'HeavyWeight'),
  ('FR Bluray Tier 1', 'MAX', 'MAX (Release Group)'),
  ('FR Bluray Tier 1', 'Psaro', 'Psaro'),
  ('FR Bluray Tier 1', 'YODA', 'YODA'),
  ('FR Bluray Tier 2', 'COCAIN', 'COCAIN'),
  ('FR Bluray Tier 2', 'DREAM', 'DREAM'),
  ('FR Bluray Tier 2', 'HDForever', 'HDForever'),
  ('FR Bluray Tier 2', 'LKT', 'LKT'),
  ('FR Bluray Tier 2', 'MARBLECAKE', 'MARBLECAKE'),
  ('FR Bluray Tier 2', 'MYSTERiON', 'MYSTERiON'),
  ('FR Bluray Tier 2', 'NoNE', 'NoNE'),
  ('FR Bluray Tier 2', 'ONLY', 'ONLY'),
  ('FR Bluray Tier 2', 'ONLYMOViE', 'ONLYMOViE'),
  ('FR Bluray Tier 2', 'Themouche', 'Themouche'),
  ('FR Bluray Tier 2', 'TkHD', 'TkHD'),
  ('FR Bluray Tier 2', 'TSR', 'TSR'),
  ('FR Bluray Tier 2', 'UTT', 'UTT'),
  ('FR UHD Bluray Tier 1', 'FLOP', 'FLOP'),
  ('FR UHD Bluray Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR UHD Bluray Tier 1', 'FoX', 'FoX'),
  ('FR UHD Bluray Tier 1', 'Psaro', 'Psaro'),
  ('FR UHD Bluray Tier 2', 'DUSTiN', 'DUSTiN'),
  ('FR UHD Bluray Tier 2', 'FCK', 'FCK'),
  ('FR UHD Bluray Tier 2', 'FrIeNdS', 'FrIeNdS'),
  ('FR UHD Bluray Tier 2', 'QUALiTY', 'QUALiTY'),
  ('FR Light Tier 1', 'LiDHL', 'LiDHL'),
  ('FR Light Tier 1', 'KAAZA', 'KAAZA'),
  ('FR Light Tier 1', 'mHDgz', 'mHDgz'),
  ('FR Light Tier 1', 'QTZ', 'QTZ'),
  ('FR Light Tier 1', 'RiFiFi', 'RiFiFi'),
  ('FR Light Tier 2', 'AW', 'AW'),
  ('FR Light Tier 2', 'D4RK', 'D4RK'),
  ('FR Light Tier 2', 'Floppy', 'Floppy'),
  ('FR Light Tier 2', 'TARDiS', 'TARDiS'),
  ('FR Light Tier 2', 'GHT', 'GHT'),
  ('FR Light Tier 2', 'J4CK', 'J4CK'),
  ('FR Light Tier 2', 'PATOMiEL', 'PATOMiEL'),
  ('FR Light Tier 2', 'PiXEL', 'PiXEL'),
  ('FR Light Tier 2', 'PopHD', 'PopHD'),
  ('FR Light Tier 2', 'SANTACRUZ', 'SANTACRUZ'),
  ('FR Light Tier 2', 'Winks', 'Winks'),
  ('FR Light Tier 2', 'Maxadonf', 'Maxadonf'),
  ('FR Light Tier 2', 'Xantar', 'Xantar'),
  ('FR DVD Tier 1', 'GORE', 'GORE'),
  ('FR DVD Tier 1', 'MULTiPLY', 'MULTiPLY'),
  ('FR DVD Tier 1', 'PRESTiGE', 'PRESTiGE'),
  ('FR Unknown Tier 1', 'AJP', 'AJP'),
  ('FR Unknown Tier 1', 'AMEN', 'AMEN'),
  ('FR Unknown Tier 1', 'B@tman', 'B@tman'),
  ('FR Unknown Tier 1', 'ATE', 'ATE'),
  ('FR Unknown Tier 1', 'BY_ORDER', 'BY_ORDER'),
  ('FR Unknown Tier 1', 'GKS', 'GKS'),
  ('FR Unknown Tier 1', 'ALPIATE', 'ALPIATE'),
  ('FR Unknown Tier 1', 'M@x', 'M@x'),
  ('FR Unknown Tier 1', 'ZTM', 'ZTM')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, 'release_group', 'all', 0, 0
FROM team
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = team.custom_format_name
    AND name = team.condition_name
);

WITH team(custom_format_name, condition_name, regex_name) AS (
  VALUES
  ('FR WEB Top Tier', 'FW', 'FW'),
  ('FR WEB Top Tier', 'FORWARD', 'FORWARD'),
  ('FR WEB Top Tier', 'CHiLL', 'CHiLL'),
  ('FR WEB Top Tier', 'TyHD', 'TyHD'),
  ('FR WEB Top Tier', 'TFA', 'TFA'),
  ('FR WEB Top Tier', 'THESYNDICATE', 'THESYNDICATE'),
  ('FR WEB Tier 1', 'BONBON', 'BONBON'),
  ('FR WEB Tier 1', 'FCK', 'FCK'),
  ('FR WEB Tier 1', 'FoX', 'FoX'),
  ('FR WEB Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR WEB Tier 1', 'FrIeNdS', 'FrIeNdS'),
  ('FR WEB Tier 1', 'MOONLY', 'MOONLY'),
  ('FR WEB Tier 1', 'MTDK', 'MTDK'),
  ('FR WEB Tier 1', 'NoLo', 'NoLo'),
  ('FR WEB Tier 1', 'OZEF', 'OZEF'),
  ('FR WEB Tier 1', 'PATOPESTO', 'PATOPESTO'),
  ('FR WEB Tier 1', 'Psaro', 'Psaro'),
  ('FR WEB Tier 1', 'RG', 'RG'),
  ('FR WEB Tier 1', 'SUPPLY', 'SUPPLY'),
  ('FR WEB Tier 1', 'TiNA', 'TiNA'),
  ('FR WEB Tier 2', 'ALLDAYiN', 'ALLDAYiN'),
  ('FR WEB Tier 2', 'ARK01', 'ARK01'),
  ('FR WEB Tier 2', 'BOUBA', 'BOUBA'),
  ('FR WEB Tier 2', 'COLL3CTiF', 'COLL3CTiF'),
  ('FR WEB Tier 2', 'FiND', 'FiND'),
  ('FR WEB Tier 2', 'HeavyWeight', 'HeavyWeight'),
  ('FR WEB Tier 2', 'N3ZUKO', 'N3ZUKO'),
  ('FR WEB Tier 2', 'NEO', 'NEO'),
  ('FR WEB Tier 2', 'NEOSTARK', 'NEOSTARK'),
  ('FR WEB Tier 2', 'NoNE', 'NoNE'),
  ('FR WEB Tier 2', 'ONLYMOViE', 'ONLYMOViE'),
  ('FR WEB Tier 2', 'pERsO', 'pERsO'),
  ('FR WEB Tier 2', 'POTO', 'POTO'),
  ('FR WEB Tier 2', 'R3MIX', 'R3MIX'),
  ('FR WEB Tier 2', 'RiPiT', 'RiPiT'),
  ('FR WEB Tier 2', 'Slay3R', 'Slay3R'),
  ('FR WEB Tier 2', 'SUPERFLU', 'SUPERFLU'),
  ('FR WEB Tier 2', 'TAT', 'TAT'),
  ('FR WEB Tier 2', 'TkHD', 'TkHD'),
  ('FR WEB Tier 2', 'TLC', 'TLC'),
  ('FR WEB Tier 2', 'TMB', 'TMB'),
  ('FR WEB Tier 2', 'WaCkS', 'WaCkS'),
  ('FR WEB Tier 3', 'BraD', 'BraD'),
  ('FR WEB Tier 3', 'BOUC', 'BOUC'),
  ('FR WEB Tier 3', 'dRuIdE', 'dRuIdE'),
  ('FR WEB Tier 3', 'ENIGMA', 'ENIGMA'),
  ('FR WEB Tier 3', 'FTMVHD', 'FTMVHD'),
  ('FR WEB Tier 3', 'LAZARUS', 'LAZARUS'),
  ('FR WEB Tier 3', 'MYSTERiON', 'MYSTERiON'),
  ('FR WEB Tier 3', 'Scaph', 'Scaph'),
  ('FR WEB Tier 3', 'WQM', 'WQM'),
  ('FR Bluray Tier 1', 'ARK01', 'ARK01'),
  ('FR Bluray Tier 1', 'BDHD', 'BDHD'),
  ('FR Bluray Tier 1', 'BONBON', 'BONBON'),
  ('FR Bluray Tier 1', 'FoX', 'FoX'),
  ('FR Bluray Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR Bluray Tier 1', 'FrIeNdS', 'FrIeNdS'),
  ('FR Bluray Tier 1', 'FTMVHD', 'FTMVHD'),
  ('FR Bluray Tier 1', 'HeavyWeight', 'HeavyWeight'),
  ('FR Bluray Tier 1', 'MAX', 'MAX (Release Group)'),
  ('FR Bluray Tier 1', 'Psaro', 'Psaro'),
  ('FR Bluray Tier 1', 'YODA', 'YODA'),
  ('FR Bluray Tier 2', 'COCAIN', 'COCAIN'),
  ('FR Bluray Tier 2', 'DREAM', 'DREAM'),
  ('FR Bluray Tier 2', 'HDForever', 'HDForever'),
  ('FR Bluray Tier 2', 'LKT', 'LKT'),
  ('FR Bluray Tier 2', 'MARBLECAKE', 'MARBLECAKE'),
  ('FR Bluray Tier 2', 'MYSTERiON', 'MYSTERiON'),
  ('FR Bluray Tier 2', 'NoNE', 'NoNE'),
  ('FR Bluray Tier 2', 'ONLY', 'ONLY'),
  ('FR Bluray Tier 2', 'ONLYMOViE', 'ONLYMOViE'),
  ('FR Bluray Tier 2', 'Themouche', 'Themouche'),
  ('FR Bluray Tier 2', 'TkHD', 'TkHD'),
  ('FR Bluray Tier 2', 'TSR', 'TSR'),
  ('FR Bluray Tier 2', 'UTT', 'UTT'),
  ('FR UHD Bluray Tier 1', 'FLOP', 'FLOP'),
  ('FR UHD Bluray Tier 1', 'FRATERNiTY', 'FRATERNiTY'),
  ('FR UHD Bluray Tier 1', 'FoX', 'FoX'),
  ('FR UHD Bluray Tier 1', 'Psaro', 'Psaro'),
  ('FR UHD Bluray Tier 2', 'DUSTiN', 'DUSTiN'),
  ('FR UHD Bluray Tier 2', 'FCK', 'FCK'),
  ('FR UHD Bluray Tier 2', 'FrIeNdS', 'FrIeNdS'),
  ('FR UHD Bluray Tier 2', 'QUALiTY', 'QUALiTY'),
  ('FR Light Tier 1', 'LiDHL', 'LiDHL'),
  ('FR Light Tier 1', 'KAAZA', 'KAAZA'),
  ('FR Light Tier 1', 'mHDgz', 'mHDgz'),
  ('FR Light Tier 1', 'QTZ', 'QTZ'),
  ('FR Light Tier 1', 'RiFiFi', 'RiFiFi'),
  ('FR Light Tier 2', 'AW', 'AW'),
  ('FR Light Tier 2', 'D4RK', 'D4RK'),
  ('FR Light Tier 2', 'Floppy', 'Floppy'),
  ('FR Light Tier 2', 'TARDiS', 'TARDiS'),
  ('FR Light Tier 2', 'GHT', 'GHT'),
  ('FR Light Tier 2', 'J4CK', 'J4CK'),
  ('FR Light Tier 2', 'PATOMiEL', 'PATOMiEL'),
  ('FR Light Tier 2', 'PiXEL', 'PiXEL'),
  ('FR Light Tier 2', 'PopHD', 'PopHD'),
  ('FR Light Tier 2', 'SANTACRUZ', 'SANTACRUZ'),
  ('FR Light Tier 2', 'Winks', 'Winks'),
  ('FR Light Tier 2', 'Maxadonf', 'Maxadonf'),
  ('FR Light Tier 2', 'Xantar', 'Xantar'),
  ('FR DVD Tier 1', 'GORE', 'GORE'),
  ('FR DVD Tier 1', 'MULTiPLY', 'MULTiPLY'),
  ('FR DVD Tier 1', 'PRESTiGE', 'PRESTiGE'),
  ('FR Unknown Tier 1', 'AJP', 'AJP'),
  ('FR Unknown Tier 1', 'AMEN', 'AMEN'),
  ('FR Unknown Tier 1', 'B@tman', 'B@tman'),
  ('FR Unknown Tier 1', 'ATE', 'ATE'),
  ('FR Unknown Tier 1', 'GKS', 'GKS'),
  ('FR Unknown Tier 1', 'ALPIATE', 'ALPIATE'),
  ('FR Unknown Tier 1', 'M@x', 'M@x'),
  ('FR Unknown Tier 1', 'ZTM', 'ZTM')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regex_name
FROM team
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = team.custom_format_name
    AND condition_name = team.condition_name
);

-- Retire old historical tier names from the final exported DB.
WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

WITH old_cf(name) AS (
  VALUES
  ('FR 1080p Balanced Tier 1'),
  ('FR 1080p Balanced Tier 2'),
  ('FR Global Tier 01'),
  ('FR Global Tier 02'),
  ('FR HDLight Tier'),
  ('FR Movie HD Bluray Tier 01'),
  ('FR Movie HD Bluray Tier 02'),
  ('FR Movie Remux Tier 01'),
  ('FR Movie Remux Tier 02'),
  ('FR Movie UHD Bluray Tier 01'),
  ('FR Movie UHD Bluray Tier 02'),
  ('FR Movie WEB Tier 01'),
  ('FR Movie WEB Tier 02'),
  ('FR TV HD Bluray Tier 01'),
  ('FR TV Remux Tier 01'),
  ('FR TV WEB Tier 01'),
  ('FR TV WEB Tier 02'),
  ('FR TV WEB Tier 03')
)
UPDATE custom_formats
SET description = 'Deprecated by FR source tier taxonomy. Kept only to satisfy Profilarr foreign-key metadata; not used by final FR profiles.'
WHERE name IN (SELECT name FROM old_cf);

-- HYPERION releases games, not video. Keep existing tag and condition rows
-- intact because Profilarr PCD metadata can be FK-backed across tables; make
-- the regex impossible to match instead.
UPDATE regular_expressions
SET pattern = '(?!)',
    description = 'Disabled: HYPERION releases games, not video.'
WHERE name = 'HYPERION';

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name IN ('FR UHD Bluray Tier 1', 'FR UHD Bluray Tier 2');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Balanced FR', 'FR UHD Bluray Tier 1', 'radarr', 442000),
  ('2160p Balanced FR', 'FR UHD Bluray Tier 2', 'radarr', 441000),
  ('2160p Efficient FR', 'FR UHD Bluray Tier 1', 'radarr', 382000),
  ('2160p Efficient FR', 'FR UHD Bluray Tier 2', 'radarr', 381000),
  ('2160p Quality FR', 'FR UHD Bluray Tier 1', 'radarr', 442000),
  ('2160p Quality FR', 'FR UHD Bluray Tier 2', 'radarr', 441000),
  ('2160p Remux FR', 'FR UHD Bluray Tier 1', 'radarr', 462000),
  ('2160p Remux FR', 'FR UHD Bluray Tier 2', 'radarr', 461000);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced FR'
  AND custom_format_name IN (
    '1080p WEB-DL',
    'FR 1080p Balanced',
    'FR WEB Top Tier',
    'FR WEB Tier 1',
    'FR WEB Tier 2',
    'FR WEB Tier 3'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Balanced FR', 'FR WEB Top Tier', 'all', 5000),
  ('1080p Balanced FR', 'FR WEB Tier 1', 'all', 4300),
  ('1080p Balanced FR', 'FR WEB Tier 2', 'all', 4200),
  ('1080p Balanced FR', 'FR WEB Tier 3', 'all', 4100);

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM custom_format_tags
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM condition_patterns
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM condition_sources
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM condition_resolutions
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'FR 1080p Balanced';

DELETE FROM custom_formats
WHERE name = 'FR 1080p Balanced';

-- 1080p Compact keeps its HDLight/WEBRip compact ladder, but can now reward
-- normal FR WEB tiers without making them outrank compact-specialized teams.
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Compact FR'
  AND custom_format_name IN (
    'FR WEB Top Tier',
    'FR WEB Tier 1',
    'FR WEB Tier 2',
    'FR WEB Tier 3'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Compact FR', 'FR WEB Top Tier', 'all', 16000),
  ('1080p Compact FR', 'FR WEB Tier 1', 'all', 15300),
  ('1080p Compact FR', 'FR WEB Tier 2', 'all', 15200),
  ('1080p Compact FR', 'FR WEB Tier 3', 'all', 15100);

-- Efficient 1080p: the HEVC source passes are no longer team-specific. Team
-- preference is carried separately by the reusable WEB/Bluray tiers below.
INSERT INTO custom_formats (name, description)
SELECT '1080p Bluray HEVC', '1080p HEVC Bluray source pass without release-group condition.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = '1080p Bluray HEVC');

INSERT INTO custom_formats (name, description)
SELECT '1080p WEB-DL HEVC', '1080p HEVC WEB-DL source pass without release-group condition.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = '1080p WEB-DL HEVC');

WITH tag_map(custom_format_name, tag_name) AS (
  VALUES
  ('1080p Bluray HEVC', 'French'),
  ('1080p Bluray HEVC', '1080p'),
  ('1080p Bluray HEVC', 'HEVC'),
  ('1080p WEB-DL HEVC', 'French'),
  ('1080p WEB-DL HEVC', '1080p'),
  ('1080p WEB-DL HEVC', 'HEVC')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM tag_map
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_format_tags cft
  WHERE cft.custom_format_name = tag_map.custom_format_name
    AND cft.tag_name = tag_map.tag_name
);

WITH condition_map(custom_format_name, condition_name, type, negate, required) AS (
  VALUES
  ('1080p Bluray HEVC', '1080p', 'resolution', 0, 1),
  ('1080p Bluray HEVC', 'Bluray', 'source', 0, 1),
  ('1080p Bluray HEVC', 'h265', 'release_title', 0, 1),
  ('1080p WEB-DL HEVC', '1080p', 'resolution', 0, 1),
  ('1080p WEB-DL HEVC', 'WEB-DL', 'source', 0, 1),
  ('1080p WEB-DL HEVC', 'h265', 'release_title', 0, 1)
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, type, 'all', negate, required
FROM condition_map
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = condition_map.custom_format_name
    AND cfc.name = condition_map.condition_name
);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT '1080p Bluray HEVC', '1080p', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_resolutions
  WHERE custom_format_name = '1080p Bluray HEVC' AND condition_name = '1080p'
);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT '1080p WEB-DL HEVC', '1080p', '1080p'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_resolutions
  WHERE custom_format_name = '1080p WEB-DL HEVC' AND condition_name = '1080p'
);

INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT '1080p Bluray HEVC', 'Bluray', 'bluray'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_sources
  WHERE custom_format_name = '1080p Bluray HEVC' AND condition_name = 'Bluray'
);

INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT '1080p WEB-DL HEVC', 'WEB-DL', 'web_dl'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_sources
  WHERE custom_format_name = '1080p WEB-DL HEVC' AND condition_name = 'WEB-DL'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p Bluray HEVC', 'h265', 'HEVC'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '1080p Bluray HEVC' AND condition_name = 'h265'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p WEB-DL HEVC', 'h265', 'HEVC'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '1080p WEB-DL HEVC' AND condition_name = 'h265'
);

UPDATE custom_formats
SET description = 'Deprecated by FR 1080p Efficient source/tier split. Kept only for FK-backed metadata compatibility.'
WHERE name IN ('FR 1080p Bluray HEVC Tier 1', 'FR 1080p WEB-DL HEVC Tier 1');

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Efficient FR'
  AND custom_format_name IN (
    'FR 1080p Bluray HEVC Tier 1',
    'FR 1080p WEB-DL HEVC Tier 1',
    '1080p Bluray HEVC',
    '1080p WEB-DL HEVC',
    '1080p WEB-DL AVC',
    '1080p Bluray AVC',
    'FR WEB Top Tier',
    'FR WEB Tier 1',
    'FR WEB Tier 2',
    'FR WEB Tier 3',
    'FR Bluray Tier 1',
    'FR Bluray Tier 2'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Compact FR', '1080p WEB-DL HEVC', 'all', 850000),
  ('1080p Efficient FR', '1080p Bluray HEVC', 'all', 960000),
  ('1080p Efficient FR', '1080p WEB-DL HEVC', 'all', 940000),
  ('1080p Efficient FR', '1080p WEB-DL AVC', 'all', 920000),
  ('1080p Efficient FR', '1080p Bluray AVC', 'all', 900000),
  ('1080p Efficient FR', 'FR WEB Top Tier', 'all', 5000),
  ('1080p Efficient FR', 'FR WEB Tier 1', 'all', 4300),
  ('1080p Efficient FR', 'FR WEB Tier 2', 'all', 4200),
  ('1080p Efficient FR', 'FR WEB Tier 3', 'all', 4100),
  ('1080p Efficient FR', 'FR Bluray Tier 1', 'all', 4300),
  ('1080p Efficient FR', 'FR Bluray Tier 2', 'all', 4200);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name IN (
    'FR 1080p Bluray HEVC Tier 1',
    'FR 1080p WEB-DL HEVC Tier 1',
    '1080p Bluray HEVC',
    '1080p WEB-DL HEVC',
    'FR WEB Top Tier',
    'FR WEB Tier 1',
    'FR WEB Tier 2',
    'FR WEB Tier 3',
    'FR Bluray Tier 1',
    'FR Bluray Tier 2'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Compact FR', '1080p Bluray HEVC', 'all', 50000),
  ('2160p Compact FR', '1080p WEB-DL HEVC', 'all', 50000),
  ('2160p Compact FR', 'FR WEB Top Tier', 'all', 5000),
  ('2160p Compact FR', 'FR WEB Tier 1', 'all', 4300),
  ('2160p Compact FR', 'FR WEB Tier 2', 'all', 4200),
  ('2160p Compact FR', 'FR WEB Tier 3', 'all', 4100),
  ('2160p Compact FR', 'FR Bluray Tier 1', 'all', 4300),
  ('2160p Compact FR', 'FR Bluray Tier 2', 'all', 4200);

-- 1080p Quality tiers follow the reusable FR source taxonomy:
-- Tier 1 = WEB Top + WEB Tier 1 + Bluray Tier 1
-- Tier 2 = WEB Tier 2 + Bluray Tier 2
-- Tier 3 = WEB Tier 3. There is no dedicated Bluray Tier 3 currently.
WITH target(custom_format_name) AS (
  VALUES
  ('FR 1080p Quality Tier 1'),
  ('FR 1080p Quality Tier 2'),
  ('FR 1080p Quality Tier 3')
),
release_group_condition(custom_format_name, condition_name) AS (
  SELECT cfc.custom_format_name, cfc.name
  FROM custom_format_conditions cfc
  JOIN target ON target.custom_format_name = cfc.custom_format_name
  WHERE cfc.type = 'release_group'
)
DELETE FROM condition_patterns
WHERE (custom_format_name, condition_name) IN (
  SELECT custom_format_name, condition_name FROM release_group_condition
);

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR 1080p Quality Tier 1',
    'FR 1080p Quality Tier 2',
    'FR 1080p Quality Tier 3'
  )
  AND type = 'release_group';

DELETE FROM condition_patterns
WHERE custom_format_name IN (
    'FR 1080p Quality Tier 1',
    'FR 1080p Quality Tier 2',
    'FR 1080p Quality Tier 3'
  )
  AND condition_name = 'Not Rip';

DELETE FROM custom_format_conditions
WHERE custom_format_name IN (
    'FR 1080p Quality Tier 1',
    'FR 1080p Quality Tier 2',
    'FR 1080p Quality Tier 3'
  )
  AND name = 'Not Rip'
  AND type = 'release_title';

WITH tier_map(target_cf, source_cf) AS (
  VALUES
  ('FR 1080p Quality Tier 1', 'FR WEB Top Tier'),
  ('FR 1080p Quality Tier 1', 'FR WEB Tier 1'),
  ('FR 1080p Quality Tier 1', 'FR Bluray Tier 1'),
  ('FR 1080p Quality Tier 2', 'FR WEB Tier 2'),
  ('FR 1080p Quality Tier 2', 'FR Bluray Tier 2'),
  ('FR 1080p Quality Tier 3', 'FR WEB Tier 3')
),
source_condition AS (
  SELECT DISTINCT
    tier_map.target_cf AS custom_format_name,
    cfc.name AS condition_name,
    cfc.type,
    cfc.arr_type,
    cfc.negate,
    cfc.required
  FROM tier_map
  JOIN custom_format_conditions cfc
    ON cfc.custom_format_name = tier_map.source_cf
   AND cfc.type = 'release_group'
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, type, arr_type, negate, required
FROM source_condition;

WITH tier_map(target_cf, source_cf) AS (
  VALUES
  ('FR 1080p Quality Tier 1', 'FR WEB Top Tier'),
  ('FR 1080p Quality Tier 1', 'FR WEB Tier 1'),
  ('FR 1080p Quality Tier 1', 'FR Bluray Tier 1'),
  ('FR 1080p Quality Tier 2', 'FR WEB Tier 2'),
  ('FR 1080p Quality Tier 2', 'FR Bluray Tier 2'),
  ('FR 1080p Quality Tier 3', 'FR WEB Tier 3')
),
source_pattern AS (
  SELECT DISTINCT
    tier_map.target_cf AS custom_format_name,
    cp.condition_name,
    cp.regular_expression_name
  FROM tier_map
  JOIN custom_format_conditions cfc
    ON cfc.custom_format_name = tier_map.source_cf
   AND cfc.type = 'release_group'
  JOIN condition_patterns cp
    ON cp.custom_format_name = tier_map.source_cf
   AND cp.condition_name = cfc.name
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regular_expression_name
FROM source_pattern;

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Remux FR'
  AND custom_format_name IN ('FR Remux Tier 1', 'FR Remux Tier 2');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Remux FR', 'FR Remux Tier 1', 'all', 4200),
  ('1080p Remux FR', 'FR Remux Tier 2', 'all', 4100);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN (
    '1080p Quality FR',
    '1080p Quality HDR FR',
    '1080p Remux FR',
    '2160p Balanced FR',
    '2160p Quality FR',
    '2160p Remux FR'
  )
  AND custom_format_name IN ('1080p WEBRip', '1080p Bluray');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Quality FR', '1080p WEBRip', 'all', 700000),
  ('1080p Quality FR', '1080p Bluray', 'all', 720000),
  ('1080p Quality HDR FR', '1080p WEBRip', 'all', 700000),
  ('1080p Quality HDR FR', '1080p Bluray', 'all', 720000),
  ('1080p Remux FR', '1080p WEBRip', 'all', 700000),
  ('1080p Remux FR', '1080p Bluray', 'all', 720000),
  ('2160p Balanced FR', '1080p WEBRip', 'all', 700000),
  ('2160p Balanced FR', '1080p Bluray', 'all', 720000),
  ('2160p Quality FR', '1080p WEBRip', 'all', 700000),
  ('2160p Quality FR', '1080p Bluray', 'all', 720000),
  ('2160p Remux FR', '1080p WEBRip', 'all', 700000),
  ('2160p Remux FR', '1080p Bluray', 'all', 720000);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN (
    '1080p Balanced FR',
    '1080p Quality FR',
    '1080p Quality HDR FR',
    '1080p Remux FR',
    '2160p Balanced FR',
    '2160p Quality FR',
    '2160p Remux FR'
  )
  AND custom_format_name = '1080p WEB-DL';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Balanced FR', '1080p WEB-DL', 'all', 710000),
  ('1080p Quality FR', '1080p WEB-DL', 'all', 710000),
  ('1080p Quality HDR FR', '1080p WEB-DL', 'all', 710000),
  ('1080p Remux FR', '1080p WEB-DL', 'all', 710000),
  ('2160p Balanced FR', '1080p WEB-DL', 'all', 710000),
  ('2160p Quality FR', '1080p WEB-DL', 'all', 710000),
  ('2160p Remux FR', '1080p WEB-DL', 'all', 710000);

-- 2160p Balanced follows the same split as 1080p: source/base CFs no longer
-- carry release-group conditions, and team preference is scored separately by
-- reusable 2160p tiers.
WITH new_cf(name, description) AS (
  VALUES
  ('FR 2160p Balanced WEB', '2160p WEB-DL Balanced source pass without release-group condition.'),
  ('FR 2160p Balanced Bluray', '2160p Bluray Balanced source pass without release-group condition.'),
  ('FR 2160p WEB Top Tier', '2160p WEB copy of FR WEB Top Tier with 2160p and Not Remux gates.'),
  ('FR 2160p WEB Tier 1', '2160p WEB copy of FR WEB Tier 1 with 2160p and Not Remux gates.'),
  ('FR 2160p WEB Tier 2', '2160p WEB copy of FR WEB Tier 2 with 2160p and Not Remux gates.'),
  ('FR 2160p WEB Tier 3', '2160p WEB copy of FR WEB Tier 3 with 2160p and Not Remux gates.'),
  ('FR 2160p Bluray Tier 1', '2160p Bluray copy of FR Bluray Tier 1 with 2160p and Not Remux gates.'),
  ('FR 2160p Bluray Tier 2', '2160p Bluray copy of FR Bluray Tier 2 with 2160p and Not Remux gates.')
)
INSERT INTO custom_formats (name, description)
SELECT name, description
FROM new_cf
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE custom_formats.name = new_cf.name);

WITH tag_map(custom_format_name, tag_name) AS (
  VALUES
  ('FR 2160p Balanced WEB', 'French'), ('FR 2160p Balanced WEB', '2160p'), ('FR 2160p Balanced WEB', 'Balanced'), ('FR 2160p Balanced WEB', 'WEB-DL'),
  ('FR 2160p Balanced Bluray', 'French'), ('FR 2160p Balanced Bluray', '2160p'), ('FR 2160p Balanced Bluray', 'Balanced'), ('FR 2160p Balanced Bluray', 'Bluray'),
  ('FR 2160p WEB Top Tier', 'French'), ('FR 2160p WEB Top Tier', '2160p'), ('FR 2160p WEB Top Tier', 'WEB-DL'), ('FR 2160p WEB Top Tier', 'Release Group Tier'),
  ('FR 2160p WEB Tier 1', 'French'), ('FR 2160p WEB Tier 1', '2160p'), ('FR 2160p WEB Tier 1', 'WEB-DL'), ('FR 2160p WEB Tier 1', 'Release Group Tier'),
  ('FR 2160p WEB Tier 2', 'French'), ('FR 2160p WEB Tier 2', '2160p'), ('FR 2160p WEB Tier 2', 'WEB-DL'), ('FR 2160p WEB Tier 2', 'Release Group Tier'),
  ('FR 2160p WEB Tier 3', 'French'), ('FR 2160p WEB Tier 3', '2160p'), ('FR 2160p WEB Tier 3', 'WEB-DL'), ('FR 2160p WEB Tier 3', 'Release Group Tier'),
  ('FR 2160p Bluray Tier 1', 'French'), ('FR 2160p Bluray Tier 1', '2160p'), ('FR 2160p Bluray Tier 1', 'Bluray'), ('FR 2160p Bluray Tier 1', 'Release Group Tier'),
  ('FR 2160p Bluray Tier 2', 'French'), ('FR 2160p Bluray Tier 2', '2160p'), ('FR 2160p Bluray Tier 2', 'Bluray'), ('FR 2160p Bluray Tier 2', 'Release Group Tier')
)
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, tag_name
FROM tag_map
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_tags cft
  WHERE cft.custom_format_name = tag_map.custom_format_name
    AND cft.tag_name = tag_map.tag_name
);

WITH base_condition(custom_format_name, condition_name, type, negate, required) AS (
  VALUES
  ('FR 2160p Balanced WEB', '2160p', 'resolution', 0, 1),
  ('FR 2160p Balanced WEB', 'WEB-DL', 'source', 0, 1),
  ('FR 2160p Balanced WEB', 'h265', 'release_title', 0, 1),
  ('FR 2160p Balanced Bluray', '2160p', 'resolution', 0, 1),
  ('FR 2160p Balanced Bluray', 'Bluray', 'source', 0, 1),
  ('FR 2160p Balanced Bluray', 'h265', 'release_title', 0, 1)
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, type, 'all', negate, required
FROM base_condition
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = base_condition.custom_format_name
    AND cfc.name = base_condition.condition_name
);

WITH source_tier_condition(custom_format_name, condition_name, type, negate, required) AS (
  VALUES
  ('FR 2160p WEB Top Tier', '2160p', 'resolution', 0, 1),
  ('FR 2160p WEB Top Tier', 'WEB Source', 'release_title', 0, 1),
  ('FR 2160p WEB Top Tier', 'Not Remux', 'release_title', 1, 1),
  ('FR 2160p WEB Tier 1', '2160p', 'resolution', 0, 1),
  ('FR 2160p WEB Tier 1', 'WEB Source', 'release_title', 0, 1),
  ('FR 2160p WEB Tier 1', 'Not Remux', 'release_title', 1, 1),
  ('FR 2160p WEB Tier 2', '2160p', 'resolution', 0, 1),
  ('FR 2160p WEB Tier 2', 'WEB Source', 'release_title', 0, 1),
  ('FR 2160p WEB Tier 2', 'Not Remux', 'release_title', 1, 1),
  ('FR 2160p WEB Tier 3', '2160p', 'resolution', 0, 1),
  ('FR 2160p WEB Tier 3', 'WEB Source', 'release_title', 0, 1),
  ('FR 2160p WEB Tier 3', 'Not Remux', 'release_title', 1, 1),
  ('FR 2160p Bluray Tier 1', '2160p', 'resolution', 0, 1),
  ('FR 2160p Bluray Tier 1', 'Bluray', 'source', 0, 1),
  ('FR 2160p Bluray Tier 1', 'Not Remux', 'release_title', 1, 1),
  ('FR 2160p Bluray Tier 2', '2160p', 'resolution', 0, 1),
  ('FR 2160p Bluray Tier 2', 'Bluray', 'source', 0, 1),
  ('FR 2160p Bluray Tier 2', 'Not Remux', 'release_title', 1, 1)
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, type, 'all', negate, required
FROM source_tier_condition
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = source_tier_condition.custom_format_name
    AND cfc.name = source_tier_condition.condition_name
);

WITH resolution_map(custom_format_name, condition_name, resolution) AS (
  VALUES
  ('FR 2160p Balanced WEB', '2160p', '2160p'),
  ('FR 2160p Balanced Bluray', '2160p', '2160p'),
  ('FR 2160p WEB Top Tier', '2160p', '2160p'),
  ('FR 2160p WEB Tier 1', '2160p', '2160p'),
  ('FR 2160p WEB Tier 2', '2160p', '2160p'),
  ('FR 2160p WEB Tier 3', '2160p', '2160p'),
  ('FR 2160p Bluray Tier 1', '2160p', '2160p'),
  ('FR 2160p Bluray Tier 2', '2160p', '2160p')
)
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT custom_format_name, condition_name, resolution
FROM resolution_map
WHERE NOT EXISTS (
  SELECT 1 FROM condition_resolutions cr
  WHERE cr.custom_format_name = resolution_map.custom_format_name
    AND cr.condition_name = resolution_map.condition_name
);

WITH source_map(custom_format_name, condition_name, source) AS (
  VALUES
  ('FR 2160p Balanced WEB', 'WEB-DL', 'web_dl'),
  ('FR 2160p Balanced Bluray', 'Bluray', 'bluray'),
  ('FR 2160p Bluray Tier 1', 'Bluray', 'bluray'),
  ('FR 2160p Bluray Tier 2', 'Bluray', 'bluray')
)
INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT custom_format_name, condition_name, source
FROM source_map
WHERE NOT EXISTS (
  SELECT 1 FROM condition_sources cs
  WHERE cs.custom_format_name = source_map.custom_format_name
    AND cs.condition_name = source_map.condition_name
);

WITH pattern_map(custom_format_name, condition_name, regular_expression_name) AS (
  VALUES
  ('FR 2160p Balanced WEB', 'h265', 'HEVC'),
  ('FR 2160p Balanced Bluray', 'h265', 'HEVC'),
  ('FR 2160p WEB Top Tier', 'WEB Source', 'WEB Source'),
  ('FR 2160p WEB Top Tier', 'Not Remux', 'Remux'),
  ('FR 2160p WEB Tier 1', 'WEB Source', 'WEB Source'),
  ('FR 2160p WEB Tier 1', 'Not Remux', 'Remux'),
  ('FR 2160p WEB Tier 2', 'WEB Source', 'WEB Source'),
  ('FR 2160p WEB Tier 2', 'Not Remux', 'Remux'),
  ('FR 2160p WEB Tier 3', 'WEB Source', 'WEB Source'),
  ('FR 2160p WEB Tier 3', 'Not Remux', 'Remux'),
  ('FR 2160p Bluray Tier 1', 'Not Remux', 'Remux'),
  ('FR 2160p Bluray Tier 2', 'Not Remux', 'Remux')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regular_expression_name
FROM pattern_map
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns cp
  WHERE cp.custom_format_name = pattern_map.custom_format_name
    AND cp.condition_name = pattern_map.condition_name
);

WITH tier_copy(target_cf, source_cf) AS (
  VALUES
  ('FR 2160p WEB Top Tier', 'FR WEB Top Tier'),
  ('FR 2160p WEB Tier 1', 'FR WEB Tier 1'),
  ('FR 2160p WEB Tier 2', 'FR WEB Tier 2'),
  ('FR 2160p WEB Tier 3', 'FR WEB Tier 3'),
  ('FR 2160p Bluray Tier 1', 'FR Bluray Tier 1'),
  ('FR 2160p Bluray Tier 2', 'FR Bluray Tier 2')
),
source_condition AS (
  SELECT DISTINCT
    tier_copy.target_cf AS custom_format_name,
    cfc.name AS condition_name,
    cfc.type,
    cfc.arr_type,
    cfc.negate,
    cfc.required
  FROM tier_copy
  JOIN custom_format_conditions cfc
    ON cfc.custom_format_name = tier_copy.source_cf
   AND cfc.type = 'release_group'
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT custom_format_name, condition_name, type, arr_type, negate, required
FROM source_condition
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = source_condition.custom_format_name
    AND cfc.name = source_condition.condition_name
);

WITH tier_copy(target_cf, source_cf) AS (
  VALUES
  ('FR 2160p WEB Top Tier', 'FR WEB Top Tier'),
  ('FR 2160p WEB Tier 1', 'FR WEB Tier 1'),
  ('FR 2160p WEB Tier 2', 'FR WEB Tier 2'),
  ('FR 2160p WEB Tier 3', 'FR WEB Tier 3'),
  ('FR 2160p Bluray Tier 1', 'FR Bluray Tier 1'),
  ('FR 2160p Bluray Tier 2', 'FR Bluray Tier 2')
),
source_pattern AS (
  SELECT DISTINCT
    tier_copy.target_cf AS custom_format_name,
    cp.condition_name,
    cp.regular_expression_name
  FROM tier_copy
  JOIN custom_format_conditions cfc
    ON cfc.custom_format_name = tier_copy.source_cf
   AND cfc.type = 'release_group'
  JOIN condition_patterns cp
    ON cp.custom_format_name = tier_copy.source_cf
   AND cp.condition_name = cfc.name
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT custom_format_name, condition_name, regular_expression_name
FROM source_pattern
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns cp
  WHERE cp.custom_format_name = source_pattern.custom_format_name
    AND cp.condition_name = source_pattern.condition_name
);

DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEB-DL (Balanced)'
  AND condition_name LIKE 'Not %';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEB-DL (Balanced)'
  AND type = 'release_group'
  AND name LIKE 'Not %';

UPDATE custom_formats
SET description = 'Deprecated by FR 2160p Balanced source/tier split. Kept only for FK-backed metadata compatibility.'
WHERE name IN ('FR 2160p Balanced WEB Tier 1', 'FR 2160p Balanced Bluray Tier 1');

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Balanced FR'
  AND custom_format_name IN (
    'FR 2160p Balanced WEB Tier 1',
    'FR 2160p Balanced Bluray Tier 1',
    'FR 2160p Balanced WEB',
    'FR 2160p Balanced Bluray',
    '2160p WEB-DL (Efficient/Balanced)',
    '2160p WEB-DL (Balanced)',
    'FR UHD Bluray Tier 1',
    'FR UHD Bluray Tier 2',
    'FR 2160p WEB Top Tier',
    'FR 2160p WEB Tier 1',
    'FR 2160p WEB Tier 2',
    'FR 2160p WEB Tier 3',
    'FR 2160p Bluray Tier 1',
    'FR 2160p Bluray Tier 2'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Balanced FR', 'FR 2160p Balanced WEB', 'all', 920000),
  ('2160p Balanced FR', 'FR 2160p Balanced Bluray', 'all', 921000),
  ('2160p Balanced FR', '2160p WEB-DL (Balanced)', 'all', 910000),
  ('2160p Balanced FR', 'FR UHD Bluray Tier 1', 'all', 4200),
  ('2160p Balanced FR', 'FR UHD Bluray Tier 2', 'all', 4100),
  ('2160p Balanced FR', 'FR 2160p WEB Top Tier', 'all', 5000),
  ('2160p Balanced FR', 'FR 2160p WEB Tier 1', 'all', 4300),
  ('2160p Balanced FR', 'FR 2160p WEB Tier 2', 'all', 4200),
  ('2160p Balanced FR', 'FR 2160p WEB Tier 3', 'all', 4100),
  ('2160p Balanced FR', 'FR 2160p Bluray Tier 1', 'all', 4300),
  ('2160p Balanced FR', 'FR 2160p Bluray Tier 2', 'all', 4200);

INSERT INTO regular_expressions (name, pattern, description)
VALUES ('h264', '(?i)(?<=^|[\s.-])(?:x264|h[ ._-]?264|AVC)(?=$|[\s.-]|\d)', 'Matches h264, H.264, x264 and AVC codec markers.')
ON CONFLICT(name) DO UPDATE
SET pattern = excluded.pattern,
    description = excluded.description;

INSERT OR IGNORE INTO regular_expression_tags (regular_expression_name, tag_name)
VALUES
  ('h264', 'Codec'),
  ('h264', 'Encoder');

INSERT OR IGNORE INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL (Balanced)', 'h264', 'release_title', 'all', 0, 1);

INSERT OR IGNORE INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p WEB-DL (Balanced)', 'h264', 'h264');

INSERT OR IGNORE INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p WEB-DL AVC', 'h264', 'release_title', 'all', 0, 1);

INSERT OR IGNORE INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p WEB-DL AVC', 'h264', 'h264');

INSERT INTO custom_formats (name, description)
VALUES
  ('FR 2160p Efficient WEB h265', '2160p WEB-DL h265 source pass for 2160p Efficient FR without release-group condition.'),
  ('FR 2160p Efficient Bluray h265', '2160p Bluray h265 source pass for 2160p Efficient FR without release-group condition.')
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
VALUES
  ('FR 2160p Efficient WEB h265', 'French'), ('FR 2160p Efficient WEB h265', '2160p'), ('FR 2160p Efficient WEB h265', 'Efficient'), ('FR 2160p Efficient WEB h265', 'WEB-DL'), ('FR 2160p Efficient WEB h265', 'h265'),
  ('FR 2160p Efficient Bluray h265', 'French'), ('FR 2160p Efficient Bluray h265', '2160p'), ('FR 2160p Efficient Bluray h265', 'Efficient'), ('FR 2160p Efficient Bluray h265', 'Bluray'), ('FR 2160p Efficient Bluray h265', 'h265');

DELETE FROM condition_patterns
WHERE custom_format_name IN ('FR 2160p Efficient WEB h265', 'FR 2160p Efficient Bluray h265');

DELETE FROM condition_sources
WHERE custom_format_name IN ('FR 2160p Efficient WEB h265', 'FR 2160p Efficient Bluray h265');

DELETE FROM condition_resolutions
WHERE custom_format_name IN ('FR 2160p Efficient WEB h265', 'FR 2160p Efficient Bluray h265');

DELETE FROM custom_format_conditions
WHERE custom_format_name IN ('FR 2160p Efficient WEB h265', 'FR 2160p Efficient Bluray h265');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES
  ('FR 2160p Efficient WEB h265', '2160p', 'resolution', 'all', 0, 1),
  ('FR 2160p Efficient WEB h265', 'WEB-DL', 'source', 'all', 0, 1),
  ('FR 2160p Efficient WEB h265', 'h265', 'release_title', 'all', 0, 1),
  ('FR 2160p Efficient Bluray h265', '2160p', 'resolution', 'all', 0, 1),
  ('FR 2160p Efficient Bluray h265', 'Bluray', 'source', 'all', 0, 1),
  ('FR 2160p Efficient Bluray h265', 'h265', 'release_title', 'all', 0, 1);

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES
  ('FR 2160p Efficient WEB h265', '2160p', '2160p'),
  ('FR 2160p Efficient Bluray h265', '2160p', '2160p');

INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES
  ('FR 2160p Efficient WEB h265', 'WEB-DL', 'web_dl'),
  ('FR 2160p Efficient Bluray h265', 'Bluray', 'bluray');

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES
  ('FR 2160p Efficient WEB h265', 'h265', 'HEVC'),
  ('FR 2160p Efficient Bluray h265', 'h265', 'HEVC');

DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEB-DL AVC'
  AND condition_name LIKE 'Not %';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEB-DL AVC'
  AND type = 'release_group'
  AND name LIKE 'Not %';

UPDATE custom_formats
SET description = 'Deprecated by FR 2160p Efficient source/tier split. Kept only for FK-backed metadata compatibility.'
WHERE name IN ('FR 2160p Efficient WEB Tier 1', 'FR 2160p Efficient Bluray Tier 1');

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Efficient FR'
  AND custom_format_name IN (
    'FR 2160p Efficient WEB Tier 1',
    'FR 2160p Efficient Bluray Tier 1',
    'FR 2160p Efficient Movie WEB Tier 1',
    'FR 2160p Efficient Movie Bluray Tier 1',
    'FR 2160p Efficient TV WEB Tier 1',
    'FR 2160p Efficient TV Bluray Tier 1',
    'FR 2160p Efficient WEB h265',
    'FR 2160p Efficient Bluray h265',
    '1080p Bluray HEVC',
    '1080p WEB-DL HEVC',
    '2160p WEB-DL AVC',
    'FR UHD Bluray Tier 1',
    'FR UHD Bluray Tier 2',
    'FR WEB Top Tier',
    'FR WEB Tier 1',
    'FR WEB Tier 2',
    'FR WEB Tier 3',
    'FR Bluray Tier 1',
    'FR Bluray Tier 2'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Efficient FR', 'FR 2160p Efficient WEB h265', 'all', 983000),
  ('2160p Efficient FR', 'FR 2160p Efficient Bluray h265', 'all', 982000),
  ('2160p Efficient FR', '2160p WEB-DL AVC', 'radarr', 980000),
  ('2160p Efficient FR', '2160p WEB-DL AVC', 'sonarr', 960000),
  ('2160p Efficient FR', '1080p WEB-DL HEVC', 'all', 900000),
  ('2160p Efficient FR', '1080p Bluray HEVC', 'all', 890000),
  ('2160p Efficient FR', 'FR UHD Bluray Tier 1', 'all', 4200),
  ('2160p Efficient FR', 'FR UHD Bluray Tier 2', 'all', 4100),
  ('2160p Efficient FR', 'FR WEB Top Tier', 'all', 5000),
  ('2160p Efficient FR', 'FR WEB Tier 1', 'all', 4300),
  ('2160p Efficient FR', 'FR WEB Tier 2', 'all', 4200),
  ('2160p Efficient FR', 'FR WEB Tier 3', 'all', 4100),
  ('2160p Efficient FR', 'FR Bluray Tier 1', 'all', 4300),
  ('2160p Efficient FR', 'FR Bluray Tier 2', 'all', 4200);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality FR'
  AND custom_format_name IN ('FR UHD Bluray Tier 1', 'FR UHD Bluray Tier 2');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Quality FR', 'FR UHD Bluray Tier 1', 'all', 4200),
  ('2160p Quality FR', 'FR UHD Bluray Tier 2', 'all', 4100);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Quality FR'
  AND custom_format_name IN (
    'FR 2160p WEB Top Tier',
    'FR 2160p WEB Tier 1',
    'FR 2160p WEB Tier 2',
    'FR 2160p WEB Tier 3'
  );

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Quality FR', 'FR 2160p WEB Top Tier', 'all', 5000),
  ('2160p Quality FR', 'FR 2160p WEB Tier 1', 'all', 4300),
  ('2160p Quality FR', 'FR 2160p WEB Tier 2', 'all', 4200),
  ('2160p Quality FR', 'FR 2160p WEB Tier 3', 'all', 4100);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Remux FR'
  AND custom_format_name IN ('FR UHD Bluray Tier 1', 'FR UHD Bluray Tier 2');

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('2160p Remux FR', 'FR UHD Bluray Tier 1', 'all', 4200),
  ('2160p Remux FR', 'FR UHD Bluray Tier 2', 'all', 4100);

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('1080p Quality FR', '1080p Quality HDR FR')
  AND custom_format_name = 'FR Scene Tier';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Quality FR', 'FR Scene Tier', 'all', 127000),
  ('1080p Quality HDR FR', 'FR Scene Tier', 'all', 127000);

-- Build the generic 2160p WEBRip fallback from the current 4KLight WEBRip
-- Compact CF before widening that CF from strict WEBRip source to broad WEB title.
INSERT INTO custom_formats (name, description)
VALUES ('2160p WEBRip', 'Matches non-tier 2160p WEBRip releases for 2160p Compact FR fallback.')
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT '2160p WEBRip', tag_name
FROM custom_format_tags
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)';

DELETE FROM condition_patterns
WHERE custom_format_name = '2160p WEBRip';

DELETE FROM condition_sources
WHERE custom_format_name = '2160p WEBRip';

DELETE FROM condition_resolutions
WHERE custom_format_name = '2160p WEBRip';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p WEBRip';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '2160p WEBRip', name, type, arr_type, negate, required
FROM custom_format_conditions
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)'
  AND name <> '4KLight';

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '2160p WEBRip', condition_name, regular_expression_name
FROM condition_patterns
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)'
  AND condition_name <> '4KLight';

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT '2160p WEBRip', condition_name, resolution
FROM condition_resolutions
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)';

INSERT INTO condition_sources (custom_format_name, condition_name, source)
SELECT '2160p WEBRip', condition_name, source
FROM condition_sources
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)';

DELETE FROM condition_sources
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)'
  AND condition_name = 'WEBRip';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '2160p 4KLight WEBRip (Compact)'
  AND name = 'WEBRip';

INSERT OR IGNORE INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('2160p 4KLight WEBRip (Compact)', 'WEB Source', 'release_title', 'all', 0, 1);

INSERT OR IGNORE INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('2160p 4KLight WEBRip (Compact)', 'WEB Source', 'WEB Source');

DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '2160p Compact FR'
  AND custom_format_name = '2160p WEBRip';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('2160p Compact FR', '2160p WEBRip', 'all', 880000);

INSERT INTO custom_formats (name, description)
VALUES ('IMAX', 'Matches IMAX releases as a premium framing / aspect-ratio enhancement.')
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
VALUES
  ('IMAX', 'Aspect Ratio'),
  ('IMAX', 'Enhancement');

DELETE FROM condition_patterns
WHERE custom_format_name = 'IMAX';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'IMAX';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('IMAX', 'IMAX', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('IMAX', 'IMAX', 'IMAX');

DELETE FROM quality_profile_custom_formats
WHERE custom_format_name = 'IMAX'
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

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES
  ('1080p Balanced FR', 'IMAX', 'all', 0),
  ('1080p Compact FR', 'IMAX', 'all', 0),
  ('1080p Efficient FR', 'IMAX', 'all', 2000),
  ('1080p Quality FR', 'IMAX', 'all', 0),
  ('1080p Quality HDR FR', 'IMAX', 'all', 2000),
  ('1080p Remux FR', 'IMAX', 'all', 2000),
  ('2160p Balanced FR', 'IMAX', 'all', 2000),
  ('2160p Efficient FR', 'IMAX', 'all', 2000),
  ('2160p Quality FR', 'IMAX', 'all', 2000),
  ('2160p Remux FR', 'IMAX', 'all', 2000),
  ('720p Quality FR', 'IMAX', 'all', 0);

-- --- END op 9022
