-- ============================================================================
-- PCD 2.0 French Database - Media Management
-- Reorganised from the initial Profilarr V2 import for maintainability
-- ============================================================================

-- ============================================================================
-- MEDIA MANAGEMENT
-- ============================================================================

-- Media Settings

INSERT INTO radarr_media_settings (name, propers_repacks, enable_media_info) VALUES ('Radarr', 'doNotPrefer', 1);
INSERT INTO sonarr_media_settings (name, propers_repacks, enable_media_info) VALUES ('Sonarr', 'doNotPrefer', 1);

-- Naming Configuration

INSERT INTO radarr_naming (name, rename, movie_format, movie_folder_format, replace_illegal_characters, colon_replacement_format) VALUES ('Radarr', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 0, 'smart');
INSERT INTO sonarr_naming (name, rename, standard_episode_format, daily_episode_format, anime_episode_format, series_folder_format, season_folder_format, replace_illegal_characters, colon_replacement_format, custom_colon_replacement_format, multi_episode_style) VALUES ('Sonarr', 1, '{Series TitleYear} - S{season:00}E{episode:00} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Series TitleYear} - {Air-Date} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[MediaInfo VideoCodec]}{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Series TitleYear} - S{season:00}E{episode:00} - {absolute:000} - {Episode CleanTitle} {[Custom Formats]}{[Quality Full]}{[MediaInfo VideoDynamicRangeType]}[{MediaInfo VideoBitDepth}bit]{[MediaInfo VideoCodec]}[{Mediainfo AudioCodec} { Mediainfo AudioChannels}]{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Series TitleYear} {tvdb-{TvdbId}}', 'Season {season:00}', 0, 4, NULL, 5);

-- Quality Definitions

INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Bluray-1080p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Bluray-2160p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Bluray-480p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Bluray-576p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Bluray-720p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'BR-DISK';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'CAM';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'DVD';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'DVD-R';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'DVDSCR';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'HDTV-1080p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'HDTV-2160p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'HDTV-720p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Raw-HD';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'REGIONAL';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Remux-1080p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Remux-2160p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'SDTV';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'TELECINE';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'TELESYNC';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'Unknown';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBDL-1080p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBDL-2160p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBDL-480p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBDL-720p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBRip-1080p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBRip-2160p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBRip-480p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WEBRip-720p';
INSERT INTO radarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Radarr', m.quality_name, 0, 2000, 1990
FROM quality_api_mappings m
WHERE m.arr_type = 'radarr' AND m.api_name = 'WORKPRINT';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-1080p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-1080p Remux';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-2160p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-2160p Remux';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-480p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-576p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Bluray-720p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'DVD';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'HDTV-1080p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'HDTV-2160p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'HDTV-720p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Raw-HD';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'SDTV';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'Unknown';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBDL-1080p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBDL-2160p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBDL-480p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBDL-720p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBRip-1080p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBRip-2160p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBRip-480p';
INSERT INTO sonarr_quality_definitions (name, quality_name, min_size, max_size, preferred_size)
SELECT 'Sonarr', m.quality_name, 0, 1000, 990
FROM quality_api_mappings m
WHERE m.arr_type = 'sonarr' AND m.api_name = 'WEBRip-720p';

-- Alternative Radarr Naming from Dictionarry
INSERT INTO radarr_naming (name, rename, movie_format, movie_folder_format, replace_illegal_characters, colon_replacement_format) VALUES ('Radarr / Editionless', 1, '{Movie CleanTitle} {(Release Year)} {tmdb-{TmdbId}} {[Edition Tags]}{[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Movie CleanTitle} ({Release Year}) {tmdb-{TmdbId}}', 0, 'smart');

-- Alternative Radarr Naming for Jellyfin/Emby external-id matching
INSERT INTO radarr_naming (name, rename, movie_format, movie_folder_format, replace_illegal_characters, colon_replacement_format) VALUES ('Radarr / Jellyfin-Emby', 1, '{Movie CleanTitle} {(Release Year)} [tmdbid-{TmdbId}] {edition-{Edition Tags}} {[Custom Formats]}{[Quality Full]}{[MediaInfo 3D]}{[MediaInfo VideoDynamicRangeType]}{[Mediainfo AudioCodec}{ Mediainfo AudioChannels]}{[Mediainfo VideoCodec]}{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}{-Release Group}', '{Movie CleanTitle} ({Release Year}) [tmdbid-{TmdbId}]', 0, 'smart');
