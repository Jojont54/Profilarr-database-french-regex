-- @operation: export
-- @entity: batch
-- @name: Fix missing 1080p Bluray score in 1080p Balanced FR
-- @description: Score the 1080p Bluray custom format in 1080p Balanced FR, whose Bluray-1080p quality was re-enabled without a matching source score.

-- Bluray-1080p is part of the 1080p Balanced FR quality group (see
-- 25.align-fr-profile-quality-groups-with-dictionarry.sql), but the technical
-- score set rebuilt in 13.dictionarry-v2-technical-score-parity.sql never
-- restored the matching 1080p Bluray custom format. A 1080p Bluray release
-- therefore scored 0, below both 720p WEB-DL (660000) and the profile's
-- minimum accepted score (20000), so it was rejected outright.
--
-- 700000 keeps the profile WEB-first: just under 1080p WEB-DL (710000) and
-- above every 720p and lower source.
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name = '1080p Balanced FR'
  AND custom_format_name = '1080p Bluray';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
VALUES ('1080p Balanced FR', '1080p Bluray', 'all', 700000);
