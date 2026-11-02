-- @operation: export
-- @entity: batch
-- @name: Add Freeleech tiebreaker
-- @exportedAt: 2026-10-21T00:00:00.000Z
-- @opIds: 9032

-- --- BEGIN op 9032 ( batch Add Freeleech tiebreaker )
INSERT INTO custom_formats (name, description)
SELECT
  'Freeleech',
  'Identifie les releases signalees Freeleech par l''indexeur afin de les departager a qualite egale.'
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_formats
  WHERE name = 'Freeleech'
);

INSERT INTO custom_formats (name, description)
SELECT
  'Halfleech',
  'Identifie les releases signalees Halfleech par l''indexeur afin de les departager a qualite egale.'
WHERE NOT EXISTS (
  SELECT 1
  FROM custom_formats
  WHERE name = 'Halfleech'
);

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Freeleech', 'Freeleech'
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Freeleech')
  AND EXISTS (SELECT 1 FROM tags WHERE name = 'Freeleech')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags
    WHERE custom_format_name = 'Freeleech'
      AND tag_name = 'Freeleech'
  );

INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT 'Halfleech', 'Freeleech'
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Halfleech')
  AND EXISTS (SELECT 1 FROM tags WHERE name = 'Freeleech')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_tags
    WHERE custom_format_name = 'Halfleech'
      AND tag_name = 'Freeleech'
  );

INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'Freeleech', 'Freeleech', 'indexer_flag', 'all', 0, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Freeleech')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Freeleech'
      AND name = 'Freeleech'
  );

INSERT INTO condition_indexer_flags (
  custom_format_name,
  condition_name,
  flag
)
SELECT 'Freeleech', 'Freeleech', 'freeleech'
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Freeleech'
      AND name = 'Freeleech'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_indexer_flags
    WHERE custom_format_name = 'Freeleech'
      AND condition_name = 'Freeleech'
  );

INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'Halfleech', 'Halfleech', 'indexer_flag', 'all', 0, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Halfleech')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Halfleech'
      AND name = 'Halfleech'
  );

INSERT INTO condition_indexer_flags (
  custom_format_name,
  condition_name,
  flag
)
SELECT 'Halfleech', 'Halfleech', 'halfleech'
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Halfleech'
      AND name = 'Halfleech'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_indexer_flags
    WHERE custom_format_name = 'Halfleech'
      AND condition_name = 'Halfleech'
  );

INSERT INTO custom_format_conditions (
  custom_format_name,
  name,
  type,
  arr_type,
  negate,
  required
)
SELECT 'Halfleech', 'Not Freeleech', 'indexer_flag', 'all', 1, 1
WHERE EXISTS (SELECT 1 FROM custom_formats WHERE name = 'Halfleech')
  AND NOT EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Halfleech'
      AND name = 'Not Freeleech'
  );

INSERT INTO condition_indexer_flags (
  custom_format_name,
  condition_name,
  flag
)
SELECT 'Halfleech', 'Not Freeleech', 'freeleech'
WHERE EXISTS (
    SELECT 1
    FROM custom_format_conditions
    WHERE custom_format_name = 'Halfleech'
      AND name = 'Not Freeleech'
  )
  AND NOT EXISTS (
    SELECT 1
    FROM condition_indexer_flags
    WHERE custom_format_name = 'Halfleech'
      AND condition_name = 'Not Freeleech'
  );

WITH target(profile_name) AS (
  VALUES
    ('720p Quality FR'),
    ('1080p Balanced FR'),
    ('1080p Compact FR'),
    ('1080p Efficient FR'),
    ('1080p Quality FR'),
    ('1080p Quality HDR FR'),
    ('1080p Remux FR'),
    ('2160p Balanced FR'),
    ('2160p Compact FR'),
    ('2160p Efficient FR'),
    ('2160p Quality FR'),
    ('2160p Remux FR'),
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
SELECT target.profile_name, 'Freeleech', 'all', 4
FROM target
WHERE EXISTS (
    SELECT 1
    FROM quality_profiles qp
    WHERE qp.name = target.profile_name
  )
  AND NOT EXISTS (
    SELECT 1
    FROM quality_profile_custom_formats qpcf
    WHERE qpcf.quality_profile_name = target.profile_name
      AND qpcf.custom_format_name = 'Freeleech'
  );

WITH target(profile_name) AS (
  VALUES
    ('720p Quality FR'),
    ('1080p Balanced FR'),
    ('1080p Compact FR'),
    ('1080p Efficient FR'),
    ('1080p Quality FR'),
    ('1080p Quality HDR FR'),
    ('1080p Remux FR'),
    ('2160p Balanced FR'),
    ('2160p Compact FR'),
    ('2160p Efficient FR'),
    ('2160p Quality FR'),
    ('2160p Remux FR'),
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
SELECT target.profile_name, 'Halfleech', 'all', 2
FROM target
WHERE EXISTS (
    SELECT 1
    FROM quality_profiles qp
    WHERE qp.name = target.profile_name
  )
  AND NOT EXISTS (
    SELECT 1
    FROM quality_profile_custom_formats qpcf
    WHERE qpcf.quality_profile_name = target.profile_name
      AND qpcf.custom_format_name = 'Halfleech'
  );

-- Indexer flags are not reliable persistent upgrade criteria after import.
-- Keep them below the five-point upgrade threshold, while every Repack level
-- and Season Pack remains a meaningful upgrade.
WITH target(profile_name) AS (
  VALUES
    ('720p Quality FR'),
    ('1080p Balanced FR'),
    ('1080p Compact FR'),
    ('1080p Efficient FR'),
    ('1080p Quality FR'),
    ('1080p Quality HDR FR'),
    ('1080p Remux FR'),
    ('2160p Balanced FR'),
    ('2160p Compact FR'),
    ('2160p Efficient FR'),
    ('2160p Quality FR'),
    ('2160p Remux FR'),
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
)
UPDATE quality_profile_custom_formats
SET score = CASE custom_format_name
  WHEN 'Repack1' THEN 5
  WHEN 'Repack2' THEN 10
  WHEN 'Repack3' THEN 15
END
WHERE quality_profile_name IN (SELECT profile_name FROM target)
  AND custom_format_name IN ('Repack1', 'Repack2', 'Repack3');

WITH target(profile_name) AS (
  VALUES
    ('720p Quality FR'),
    ('1080p Balanced FR'),
    ('1080p Compact FR'),
    ('1080p Efficient FR'),
    ('1080p Quality FR'),
    ('1080p Quality HDR FR'),
    ('1080p Remux FR'),
    ('2160p Balanced FR'),
    ('2160p Compact FR'),
    ('2160p Efficient FR'),
    ('2160p Quality FR'),
    ('2160p Remux FR'),
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
)
UPDATE quality_profiles
SET upgrade_score_increment = 5
WHERE name IN (SELECT profile_name FROM target);

-- --- END op 9032
