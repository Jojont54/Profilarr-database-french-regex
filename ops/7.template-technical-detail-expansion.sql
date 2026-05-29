-- ============================================================================
-- Template technical detail expansion
--
-- Add umbrella technical CFs useful for user-built profiles while keeping
-- specific CFs available for finer scoring.
-- ============================================================================

INSERT INTO regular_expressions (name, pattern, description)
SELECT '5.1 Surround', '\D5\.1\D', 'Matches 5.1 surround channel markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = '5.1 Surround');

INSERT INTO regular_expressions (name, pattern, description)
SELECT '2.0 Stereo', '\D2\.0\D|\bStereo\b', 'Matches 2.0 stereo channel markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = '2.0 Stereo');

INSERT INTO regular_expressions (name, pattern, description)
SELECT 'MP3', '\bMP3(\b|\d)', 'Matches MP3 audio markers.'
WHERE NOT EXISTS (SELECT 1 FROM regular_expressions WHERE name = 'MP3');

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name IN ('2.0 Stereo', '5.1 Surround', '7.1 Surround')
  AND t.name IN ('Audio', 'Channel')
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO regular_expression_tags (regular_expression_name, tag_name)
SELECT re.name, t.name
FROM regular_expressions re, tags t
WHERE re.name = 'MP3'
  AND t.name = 'Audio'
  AND NOT EXISTS (
    SELECT 1
    FROM regular_expression_tags existing
    WHERE existing.regular_expression_name = re.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_formats (name, description)
SELECT 'HDR / DV', 'Matches HDR, HDR10, HLG, PQ, Dolby Vision and DV markers as a generic HDR-capable video signal.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'HDR / DV');

INSERT INTO custom_formats (name, description)
SELECT 'Lossy Audio', 'Matches common lossy audio codecs: AAC, Dolby Digital, Dolby Digital Plus, DTS core, DTS-HD HRA, Opus and MP3.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Lossy Audio');

INSERT INTO custom_formats (name, description)
SELECT 'MP3', 'Matches MP3 audio markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = 'MP3');

INSERT INTO custom_formats (name, description)
SELECT '2.0 Stereo', 'Matches 2.0 stereo channel markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = '2.0 Stereo');

INSERT INTO custom_formats (name, description)
SELECT '5.1 Surround', 'Matches 5.1 surround channel markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = '5.1 Surround');

INSERT INTO custom_formats (name, description)
SELECT '7.1 Surround', 'Matches 7.1 surround channel markers.'
WHERE NOT EXISTS (SELECT 1 FROM custom_formats WHERE name = '7.1 Surround');

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HDR / DV'
  AND t.name IN ('HDR', 'Colour Grade', 'Enhancement')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name IN ('2.0 Stereo', '5.1 Surround', '7.1 Surround')
  AND t.name IN ('Audio', 'Channel')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Lossy Audio'
  AND t.name IN ('Audio', 'Lossy Audio')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MP3'
  AND t.name = 'Audio'
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags existing
    WHERE existing.custom_format_name = cf.name
      AND existing.tag_name = t.name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'HDR / DV', 'HDR / DV', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = 'HDR / DV' AND name = 'HDR / DV'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HDR / DV', 'HDR / DV', 'Basic HDR Formats'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = 'HDR / DV'
    AND condition_name = 'HDR / DV'
    AND regular_expression_name = 'Basic HDR Formats'
);

WITH lossy_audio(condition_name, regular_expression_name) AS (
  VALUES
    ('AAC', 'AAC'),
    ('Dolby Digital', 'Dolby Digital'),
    ('Dolby Digital +', 'Dolby Digital +'),
    ('DTS', 'DTS Basic'),
    ('DTS-ES', 'DTS-ES'),
    ('DTS-HD HRA', 'DTS-HD HRA'),
    ('Opus', 'Opus'),
    ('MP3', 'MP3')
)
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Lossy Audio', condition_name, 'release_title', 'all', 0, 0
FROM lossy_audio
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Lossy Audio')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Lossy Audio'
      AND name = lossy_audio.condition_name
  );

WITH lossy_audio(condition_name, regular_expression_name) AS (
  VALUES
    ('AAC', 'AAC'),
    ('Dolby Digital', 'Dolby Digital'),
    ('Dolby Digital +', 'Dolby Digital +'),
    ('DTS', 'DTS Basic'),
    ('DTS-ES', 'DTS-ES'),
    ('DTS-HD HRA', 'DTS-HD HRA'),
    ('Opus', 'Opus'),
    ('MP3', 'MP3')
)
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossy Audio', condition_name, regular_expression_name
FROM lossy_audio
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Lossy Audio'
      AND name = lossy_audio.condition_name
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'Lossy Audio'
      AND condition_name = lossy_audio.condition_name
      AND regular_expression_name = lossy_audio.regular_expression_name
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'MP3', 'MP3', 'release_title', 'all', 0, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'MP3')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'MP3' AND name = 'MP3'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'MP3', 'MP3', 'MP3'
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'MP3' AND name = 'MP3'
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'MP3'
      AND condition_name = 'MP3'
      AND regular_expression_name = 'MP3'
  );

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '2.0 Stereo', '2.0 Stereo', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = '2.0 Stereo' AND name = '2.0 Stereo'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '2.0 Stereo', '2.0 Stereo', '2.0 Stereo'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '2.0 Stereo'
    AND condition_name = '2.0 Stereo'
    AND regular_expression_name = '2.0 Stereo'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '5.1 Surround', '5.1 Surround', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = '5.1 Surround' AND name = '5.1 Surround'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '5.1 Surround', '5.1 Surround', '5.1 Surround'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '5.1 Surround'
    AND condition_name = '5.1 Surround'
    AND regular_expression_name = '5.1 Surround'
);

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT '7.1 Surround', '7.1 Surround', 'release_title', 'all', 0, 1
WHERE NOT EXISTS (
  SELECT 1 FROM custom_format_conditions
  WHERE custom_format_name = '7.1 Surround' AND name = '7.1 Surround'
);

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '7.1 Surround', '7.1 Surround', '7.1 Surround'
WHERE NOT EXISTS (
  SELECT 1 FROM condition_patterns
  WHERE custom_format_name = '7.1 Surround'
    AND condition_name = '7.1 Surround'
    AND regular_expression_name = '7.1 Surround'
);

-- Make the generic Lossless Audio CF usable for any resolution and include FLAC.
DELETE FROM condition_resolutions
WHERE custom_format_name = 'Lossless Audio'
  AND condition_name = 'Not 2160p';

DELETE FROM custom_format_conditions
WHERE custom_format_name = 'Lossless Audio'
  AND name = 'Not 2160p';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT 'Lossless Audio', 'FLAC', 'release_title', 'all', 0, 0
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Lossless Audio')
  AND NOT EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Lossless Audio' AND name = 'FLAC'
  );

INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossless Audio', 'FLAC', 'FLAC'
WHERE EXISTS (
    SELECT 1 FROM custom_format_conditions
    WHERE custom_format_name = 'Lossless Audio' AND name = 'FLAC'
  )
  AND NOT EXISTS (
    SELECT 1 FROM condition_patterns
    WHERE custom_format_name = 'Lossless Audio'
      AND condition_name = 'FLAC'
      AND regular_expression_name = 'FLAC'
  );
