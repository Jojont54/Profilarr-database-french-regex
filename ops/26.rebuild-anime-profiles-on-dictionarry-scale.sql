-- @operation: export
-- @entity: batch
-- @name: Rebuild French anime profiles on the Dictionarry scale
-- @description: Share the 1080p Quality technical ladder between both anime profiles, then apply anime tiers and their distinct French language policies.

-- Both anime profiles now use the same 1,000,000-point scale and the same
-- minimum accepted score as the other published FR profiles.
UPDATE quality_profiles
SET description = 'Anime 1080p FR cible des releases anime 1080p de qualité en combinant
les sources techniques de Dictionarry avec les tiers de teams Anime FR.

- Priorise MULTi / French Original, puis VOSTFR, puis VF
- Accepte les encodes anime HEVC/x265 et HDR
- Rejette VFQ, les groupes de faible qualité et les releases sans marqueur français explicite
- Utilise une échelle maximale de 1 000 000 points comme les autres profils FR',
    minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000,
    upgrade_score_increment = 1
WHERE name = 'Anime 1080p FR';

UPDATE quality_profiles
SET description = 'Anime 1080p VOSTFR FR reprend le même socle technique et les mêmes
tiers de teams que le profil Anime 1080p FR, mais impose strictement la VOSTFR.

- Accepte uniquement les releases détectées VOSTFR
- Accepte les encodes anime HEVC/x265 et HDR
- Rejette MULTi, VF, VFQ, French Original et les releases sans marqueur français explicite
- Utilise une échelle maximale de 1 000 000 points comme les autres profils FR',
    minimum_custom_format_score = 20000,
    upgrade_until_score = 1000000,
    upgrade_score_increment = 1
WHERE name = 'Anime 1080p VOSTFR FR';

-- Remove the legacy 100,000-point anime matrix before rebuilding it.
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('Anime 1080p FR', 'Anime 1080p VOSTFR FR');

-- Reuse the final effective technical matrix of 1080p Quality FR:
-- sources and resolutions, audio, streaming services, editions, repacks,
-- compatibility bans, Extras and Upscale. FR tiers and language formats are
-- rebuilt below. HEVC/x265 and HDR/DV are deliberately left neutral for anime.
WITH target_profiles(name) AS (
  VALUES
    ('Anime 1080p FR'),
    ('Anime 1080p VOSTFR FR')
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
SELECT
  target_profiles.name,
  source.custom_format_name,
  source.arr_type,
  source.score
FROM target_profiles
JOIN quality_profile_custom_formats source
  ON source.quality_profile_name = '1080p Quality FR'
WHERE source.custom_format_name NOT LIKE 'FR %'
  AND source.custom_format_name NOT LIKE 'French %'
  AND source.custom_format_name NOT LIKE 'h265%'
  AND source.custom_format_name NOT LIKE 'x265%'
  AND source.custom_format_name NOT LIKE 'HDR%'
  AND source.custom_format_name NOT LIKE 'Dolby Vision%';

-- Anime team ranking follows the same high-tier scale as 1080p Quality.
-- Scene remains immediately below the four dedicated anime tiers.
WITH anime_scores(
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
) AS (
  VALUES
    ('Anime 1080p FR', 'FR Anime Tier 01', 'all', 130000),
    ('Anime 1080p FR', 'FR Anime Tier 02', 'all', 129000),
    ('Anime 1080p FR', 'FR Anime Tier 03', 'all', 128000),
    ('Anime 1080p FR', 'FR Anime FanSub', 'all', 127000),
    ('Anime 1080p FR', 'FR Scene Tier', 'all', 126000),
    ('Anime 1080p FR', 'FR LQ', 'all', -999999),

    ('Anime 1080p VOSTFR FR', 'FR Anime Tier 01', 'all', 130000),
    ('Anime 1080p VOSTFR FR', 'FR Anime Tier 02', 'all', 129000),
    ('Anime 1080p VOSTFR FR', 'FR Anime Tier 03', 'all', 128000),
    ('Anime 1080p VOSTFR FR', 'FR Anime FanSub', 'all', 127000),
    ('Anime 1080p VOSTFR FR', 'FR Scene Tier', 'all', 126000),
    ('Anime 1080p VOSTFR FR', 'FR LQ', 'all', -999999)
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
SELECT
  anime_scores.quality_profile_name,
  anime_scores.custom_format_name,
  anime_scores.arr_type,
  anime_scores.score
FROM anime_scores
JOIN quality_profiles
  ON quality_profiles.name = anime_scores.quality_profile_name
JOIN custom_formats
  ON custom_formats.name = anime_scores.custom_format_name;

-- General anime profile: MULTi / French Original > VOSTFR > VF.
WITH language_scores(
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
) AS (
  VALUES
    ('Anime 1080p FR', 'French MULTi', 'all', 0),
    ('Anime 1080p FR', 'French Original', 'all', 0),
    ('Anime 1080p FR', 'French Original Marker', 'all', 0),
    ('Anime 1080p FR', 'French VOSTFR', 'all', -30000),
    ('Anime 1080p FR', 'French VF', 'all', -70000),
    ('Anime 1080p FR', 'French VFQ', 'all', -999999),
    ('Anime 1080p FR', 'French Missing', 'all', -999999),

    ('Anime 1080p VOSTFR FR', 'French MULTi', 'all', -999999),
    ('Anime 1080p VOSTFR FR', 'French Original', 'all', -999999),
    ('Anime 1080p VOSTFR FR', 'French Original Marker', 'all', -999999),
    ('Anime 1080p VOSTFR FR', 'French VOSTFR', 'all', 0),
    ('Anime 1080p VOSTFR FR', 'French VF', 'all', -999999),
    ('Anime 1080p VOSTFR FR', 'French VFQ', 'all', -999999),
    ('Anime 1080p VOSTFR FR', 'French Missing', 'all', -999999)
)
INSERT INTO quality_profile_custom_formats (
  quality_profile_name,
  custom_format_name,
  arr_type,
  score
)
SELECT
  language_scores.quality_profile_name,
  language_scores.custom_format_name,
  language_scores.arr_type,
  language_scores.score
FROM language_scores
JOIN quality_profiles
  ON quality_profiles.name = language_scores.quality_profile_name
JOIN custom_formats
  ON custom_formats.name = language_scores.custom_format_name;
