-- @operation: export
-- @entity: batch
-- @name: dictionarry v2 common cf condition parity
-- @exportedAt: 2026-05-28T00:00:00.000Z
-- @opIds: 9014

-- --- BEGIN op 9014 ( batch dictionarry v2 common cf condition parity )
-- Align remaining common non-French custom format conditions with Dictionarry V2.

INSERT INTO regular_expressions (name, pattern, description)
SELECT '576p', '\b(576p)\b', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = '576p');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'WEB-DL', '\b(WEB[ ._-]?DL)\b', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'WEB-DL');

UPDATE regular_expressions
SET pattern = '\bWEB(?:[ ._-]?DL)?\b(?![ ._-]?Rip)'
WHERE name = 'WEB-DL';

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'QxR', '(?<=^|[\s.-])(QxR|afm72|Bandi|Celdra|FreetheFish|Garshasp|Ghost|Ime|Kappa|Langbard|LION|Panda|MONOLITH|Natty|r00t|RCVR|RZeroX|SAMPA|Silence|t3nzin|Tigole|YOGI)\b', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'QxR');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'QxR (Title)', 'QxR', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'QxR (Title)');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'TAoE', '(?<=^|[\s.-])(TAoE|Ainz|AJJMIN|ANONAZ|ArcX|bccornfo|DNU|DrainedDay|DUHIT|Erie|Frys|Goki|HxD|jb2049|JBENT|Nostradamus|r0b0t|Species180|TheSickle|xtrem3x|WEM)\b', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'TAoE');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'TAoE (Title)', 'TAoE', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'TAoE (Title)');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'Vyndros', '(?<=^|[\s.-])Vyndros\b', NULL
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'Vyndros');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('576p', 'WEB-DL')
  AND t.name = CASE WHEN re.name = '576p' THEN 'Resolution' ELSE 'Source' END
  AND NOT EXISTS (
    SELECT 1 FROM regular_expression_tags ret
    WHERE ret.regular_expression_name = re.name AND ret.tag_name = t.name
  );

-- 480p WEB-DL excludes titles explicitly marked 576p.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '480p WEB-DL', '576p', 'release_title', 'all', 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = '480p WEB-DL' AND name = '576p'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '480p WEB-DL', '576p', '576p'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '480p WEB-DL' AND condition_name = '576p'
);

-- 576p WEB-DL matches title markers in Dictionarry V2, not just quality metadata.
DELETE FROM condition_sources
WHERE custom_format_name = '576p WEB-DL';

DELETE FROM condition_resolutions
WHERE custom_format_name = '576p WEB-DL';

DELETE FROM condition_patterns
WHERE custom_format_name = '576p WEB-DL';

DELETE FROM custom_format_conditions
WHERE custom_format_name = '576p WEB-DL';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('576p WEB-DL', '576p', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('576p WEB-DL', '576p', '576p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
VALUES ('576p WEB-DL', 'WEB-DL', 'release_title', 'all', 0, 1);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
VALUES ('576p WEB-DL', 'WEB-DL', 'WEB-DL');

-- HDR (Missing) also negates explicit SDR in Dictionarry V2.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'HDR (Missing)', 'Not SDR', 'release_title', 'all', 1, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = 'HDR (Missing)' AND name = 'Not SDR'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HDR (Missing)', 'Not SDR', 'SDR'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = 'HDR (Missing)' AND condition_name = 'Not SDR'
);

-- Match Dictionarry's condition label exactly.
UPDATE custom_format_conditions
SET name = 'AI Movies Upscale'
WHERE custom_format_name = 'Upscale'
  AND name = 'AI Movie Upscale';

UPDATE condition_patterns
SET condition_name = 'AI Movies Upscale'
WHERE custom_format_name = 'Upscale'
  AND condition_name = 'AI Movie Upscale';

-- 2160p WEB-DL AVC keeps Dictionarry's exceptions for high-trust HEVC
-- groups so those releases do not double-score with the generic source CF.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '2160p WEB-DL AVC', v.name, v.type, 'all', 1, 1
FROM (
  SELECT 'Not QxR' AS name, 'release_group' AS type
  UNION ALL SELECT 'Not QxR Title', 'release_title'
  UNION ALL SELECT 'Not TAoE', 'release_group'
  UNION ALL SELECT 'Not TAoE Title', 'release_title'
  UNION ALL SELECT 'Not Vyndros', 'release_group'
) v
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions cfc
  WHERE cfc.custom_format_name = '2160p WEB-DL AVC' AND cfc.name = v.name
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '2160p WEB-DL AVC', v.condition_name, v.regex_name
FROM (
  SELECT 'Not QxR' AS condition_name, 'QxR' AS regex_name
  UNION ALL SELECT 'Not QxR Title', 'QxR (Title)'
  UNION ALL SELECT 'Not TAoE', 'TAoE'
  UNION ALL SELECT 'Not TAoE Title', 'TAoE (Title)'
  UNION ALL SELECT 'Not Vyndros', 'Vyndros'
) v
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns cp
  WHERE cp.custom_format_name = '2160p WEB-DL AVC'
    AND cp.condition_name = v.condition_name
);
-- --- END op 9014
