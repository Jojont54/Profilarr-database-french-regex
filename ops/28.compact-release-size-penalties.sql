-- @operation: export
-- @entity: batch
-- @name: compact release size penalties
-- @exportedAt: 2026-09-13T00:00:00.000Z
-- @opIds: 9028

-- --- BEGIN op 9028 ( batch compact release size penalties )
-- ============================================================================
-- Compact size preferences
--
-- The small 0 to -700 scale only breaks ties between otherwise comparable
-- releases. Radarr uses movie-size bands. Sonarr uses separate, exclusive
-- bands for season packs and individual episodes so Season Pack +10 remains
-- a useful tie-breaker.
-- ============================================================================

DROP TABLE IF EXISTS temp.compact_size_bands;

CREATE TEMP TABLE compact_size_bands (
  custom_format_name TEXT PRIMARY KEY,
  quality_profile_name TEXT NOT NULL,
  arr_type TEXT NOT NULL,
  resolution TEXT NOT NULL,
  release_kind TEXT NOT NULL,
  min_bytes INTEGER,
  max_bytes INTEGER,
  score INTEGER NOT NULL,
  description TEXT NOT NULL
);

INSERT INTO compact_size_bands (
  custom_format_name,
  quality_profile_name,
  arr_type,
  resolution,
  release_kind,
  min_bytes,
  max_bytes,
  score,
  description
)
VALUES
  -- Radarr 1080p Compact: releases up to 2 GiB keep the natural score of 0.
  ('1080p Compact Movie Size 2-3 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 2147483649, 3221225472, -100, 'Matches Radarr 1080p releases over 2 GiB and up to 3 GiB.'),
  ('1080p Compact Movie Size 3-4 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 3221225473, 4294967296, -200, 'Matches Radarr 1080p releases over 3 GiB and up to 4 GiB.'),
  ('1080p Compact Movie Size 4-6 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 4294967297, 6442450944, -300, 'Matches Radarr 1080p releases over 4 GiB and up to 6 GiB.'),
  ('1080p Compact Movie Size 6-8 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 6442450945, 8589934592, -400, 'Matches Radarr 1080p releases over 6 GiB and up to 8 GiB.'),
  ('1080p Compact Movie Size 8-10 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 8589934593, 10737418240, -500, 'Matches Radarr 1080p releases over 8 GiB and up to 10 GiB.'),
  ('1080p Compact Movie Size 10-15 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 10737418241, 16106127360, -600, 'Matches Radarr 1080p releases over 10 GiB and up to 15 GiB.'),
  ('1080p Compact Movie Size > 15 GiB', '1080p Compact FR', 'radarr', '1080p', 'movie', 16106127361, NULL, -700, 'Matches Radarr 1080p releases over 15 GiB.'),

  -- Radarr 2160p Compact: releases up to 6 GiB keep the natural score of 0.
  ('2160p Compact Movie Size 6-8 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 6442450945, 8589934592, -100, 'Matches Radarr 2160p releases over 6 GiB and up to 8 GiB.'),
  ('2160p Compact Movie Size 8-10 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 8589934593, 10737418240, -200, 'Matches Radarr 2160p releases over 8 GiB and up to 10 GiB.'),
  ('2160p Compact Movie Size 10-12 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 10737418241, 12884901888, -300, 'Matches Radarr 2160p releases over 10 GiB and up to 12 GiB.'),
  ('2160p Compact Movie Size 12-15 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 12884901889, 16106127360, -400, 'Matches Radarr 2160p releases over 12 GiB and up to 15 GiB.'),
  ('2160p Compact Movie Size 15-18 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 16106127361, 19327352832, -500, 'Matches Radarr 2160p releases over 15 GiB and up to 18 GiB.'),
  ('2160p Compact Movie Size 18-25 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 19327352833, 26843545600, -600, 'Matches Radarr 2160p releases over 18 GiB and up to 25 GiB.'),
  ('2160p Compact Movie Size > 25 GiB', '2160p Compact FR', 'radarr', '2160p', 'movie', 26843545601, NULL, -700, 'Matches Radarr 2160p releases over 25 GiB.'),

  -- Sonarr 1080p Compact. Season packs up to 10 GiB keep a size score of 0.
  ('1080p Compact Episode Size <= 800 MiB', '1080p Compact FR', 'sonarr', '1080p', 'episode', NULL, 838860800, -100, 'Matches non-season-pack Sonarr 1080p releases up to 800 MiB.'),
  ('1080p Compact Season Pack Size 10-20 GiB', '1080p Compact FR', 'sonarr', '1080p', 'season_pack', 10737418241, 21474836480, -200, 'Matches Sonarr 1080p season packs over 10 GiB and up to 20 GiB.'),
  ('1080p Compact Episode Size 800 MiB-1.2 GiB', '1080p Compact FR', 'sonarr', '1080p', 'episode', 838860801, 1288490189, -300, 'Matches non-season-pack Sonarr 1080p releases over 800 MiB and up to 1.2 GiB.'),
  ('1080p Compact Season Pack Size 20-35 GiB', '1080p Compact FR', 'sonarr', '1080p', 'season_pack', 21474836481, 37580963840, -400, 'Matches Sonarr 1080p season packs over 20 GiB and up to 35 GiB.'),
  ('1080p Compact Episode Size 1.2-2 GiB', '1080p Compact FR', 'sonarr', '1080p', 'episode', 1288490190, 2147483648, -500, 'Matches non-season-pack Sonarr 1080p releases over 1.2 GiB and up to 2 GiB.'),
  ('1080p Compact Season Pack Size > 35 GiB', '1080p Compact FR', 'sonarr', '1080p', 'season_pack', 37580963841, NULL, -600, 'Matches Sonarr 1080p season packs over 35 GiB.'),
  ('1080p Compact Episode Size > 2 GiB', '1080p Compact FR', 'sonarr', '1080p', 'episode', 2147483649, NULL, -700, 'Matches non-season-pack Sonarr 1080p releases over 2 GiB.'),

  -- Sonarr 2160p Compact. Season packs up to 20 GiB keep a size score of 0.
  ('2160p Compact Episode Size <= 2 GiB', '2160p Compact FR', 'sonarr', '2160p', 'episode', NULL, 2147483648, -100, 'Matches non-season-pack Sonarr 2160p releases up to 2 GiB.'),
  ('2160p Compact Season Pack Size 20-30 GiB', '2160p Compact FR', 'sonarr', '2160p', 'season_pack', 21474836481, 32212254720, -200, 'Matches Sonarr 2160p season packs over 20 GiB and up to 30 GiB.'),
  ('2160p Compact Episode Size 2-3 GiB', '2160p Compact FR', 'sonarr', '2160p', 'episode', 2147483649, 3221225472, -300, 'Matches non-season-pack Sonarr 2160p releases over 2 GiB and up to 3 GiB.'),
  ('2160p Compact Season Pack Size 30-50 GiB', '2160p Compact FR', 'sonarr', '2160p', 'season_pack', 32212254721, 53687091200, -400, 'Matches Sonarr 2160p season packs over 30 GiB and up to 50 GiB.'),
  ('2160p Compact Episode Size 3-5 GiB', '2160p Compact FR', 'sonarr', '2160p', 'episode', 3221225473, 5368709120, -500, 'Matches non-season-pack Sonarr 2160p releases over 3 GiB and up to 5 GiB.'),
  ('2160p Compact Season Pack Size > 50 GiB', '2160p Compact FR', 'sonarr', '2160p', 'season_pack', 53687091201, NULL, -600, 'Matches Sonarr 2160p season packs over 50 GiB.'),
  ('2160p Compact Episode Size > 5 GiB', '2160p Compact FR', 'sonarr', '2160p', 'episode', 5368709121, NULL, -700, 'Matches non-season-pack Sonarr 2160p releases over 5 GiB.');

INSERT INTO custom_formats (name, description)
SELECT custom_format_name, description
FROM compact_size_bands
WHERE 1
ON CONFLICT(name) DO UPDATE SET description = excluded.description;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, 'Compact'
FROM compact_size_bands;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, 'Storage'
FROM compact_size_bands;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, resolution
FROM compact_size_bands;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, CASE arr_type WHEN 'radarr' THEN 'Radarr' ELSE 'Sonarr' END
FROM compact_size_bands;

INSERT OR IGNORE INTO custom_format_tags (custom_format_name, tag_name)
SELECT custom_format_name, CASE arr_type WHEN 'radarr' THEN 'Movie' ELSE 'TV' END
FROM compact_size_bands;

INSERT INTO custom_format_conditions (
  custom_format_name, name, type, arr_type, negate, required
)
SELECT custom_format_name, 'Size', 'size', arr_type, 0, 1
FROM compact_size_bands;

INSERT INTO condition_sizes (custom_format_name, condition_name, min_bytes, max_bytes)
SELECT custom_format_name, 'Size', min_bytes, max_bytes
FROM compact_size_bands;

INSERT INTO custom_format_conditions (
  custom_format_name, name, type, arr_type, negate, required
)
SELECT custom_format_name, 'Resolution', 'resolution', arr_type, 0, 1
FROM compact_size_bands;

INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
SELECT custom_format_name, 'Resolution', resolution
FROM compact_size_bands;

INSERT INTO custom_format_conditions (
  custom_format_name, name, type, arr_type, negate, required
)
SELECT
  custom_format_name,
  CASE release_kind WHEN 'season_pack' THEN 'Season Pack' ELSE 'Not Season Pack' END,
  'release_type',
  'sonarr',
  CASE release_kind WHEN 'season_pack' THEN 0 ELSE 1 END,
  1
FROM compact_size_bands
WHERE release_kind IN ('season_pack', 'episode');

INSERT INTO condition_release_types (custom_format_name, condition_name, release_type)
SELECT
  custom_format_name,
  CASE release_kind WHEN 'season_pack' THEN 'Season Pack' ELSE 'Not Season Pack' END,
  'season_pack'
FROM compact_size_bands
WHERE release_kind IN ('season_pack', 'episode');

INSERT INTO quality_profile_custom_formats (
  quality_profile_name, custom_format_name, arr_type, score
)
SELECT quality_profile_name, custom_format_name, arr_type, score
FROM compact_size_bands
WHERE 1
ON CONFLICT(quality_profile_name, custom_format_name, arr_type)
DO UPDATE SET score = excluded.score;

DROP TABLE IF EXISTS temp.compact_size_bands;

-- --- END op 9028
