-- ============================================================================
-- PCD 2.0 French Database - French Profile Custom Formats
-- FR-only publication built from Dictionarry technical foundations
-- ============================================================================

INSERT INTO custom_formats (name, description) VALUES ('1080p Bluray', 'Matches 1080p Blurays that are NOT remuxes');
INSERT INTO custom_formats (name, description) VALUES ('1080p HDTV', 'Matches 1080p HDTV.');
INSERT INTO custom_formats (name, description) VALUES ('1080p Remux', 'Matches 1080p Remux');
INSERT INTO custom_formats (name, description) VALUES ('1080p WEB-DL', 'Matches 1080p WEB-DLs.');
INSERT INTO custom_formats (name, description) VALUES ('1080p WEB-DL (h264)', 'Matches 1080p WEB-DLs.');
INSERT INTO custom_formats (name, description) VALUES ('1080p WEBRip', 'Matches 1080p WEBRips.');
INSERT INTO custom_formats (name, description) VALUES ('2160p Remux', 'Matches 2160p Remux');
INSERT INTO custom_formats (name, description) VALUES ('2160p WEB-DL', 'Matches 2160p WEB-DLs.');
INSERT INTO custom_formats (name, description) VALUES ('3D', 'Matches the ''3D'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('480p Bluray', 'Matches 480p Blurays.');
INSERT INTO custom_formats (name, description) VALUES ('480p WEB-DL', 'Matches 480p WEB-DLs.');
INSERT INTO custom_formats (name, description) VALUES ('576p Bluray', 'Matches 576p Blurays.');
INSERT INTO custom_formats (name, description) VALUES ('720p Bluray', 'Matches 720p Blurays that are NOT remuxes');
INSERT INTO custom_formats (name, description) VALUES ('720p HDTV', 'Matches 720p HDTV.');
INSERT INTO custom_formats (name, description) VALUES ('720p WEB-DL', 'Matches 720p WEB-DLs.');
INSERT INTO custom_formats (name, description) VALUES ('720p WEBRip', 'Matches 720p WEBRips.');
INSERT INTO custom_formats (name, description) VALUES ('AAC', 'Matches ''AAC'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('Amazon Enhancement', '');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('AMZN', 'Matches ''Amazon Prime'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Atmos', 'Matches ''Atmos'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('Atmos (Missing)', 'Attempts to match releases which have Atmos (TrueHD 7.1) that don''t label it correctly.');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('ATVP', 'Matches ''Apple TV+'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('AV1', 'Matches the ''AV1'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('B&W', 'Matches the ''B&W'' and ''Colour'' Regex Pattern');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('BCORE', 'Matches ''Bravia Core'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Better Theatricals', 'Matches movies where the `Theatrical` cut is considered the better version. Subjectively chosen, based on Dictionarry''s personal preferences and major opinion. Needed to override the default special edition preference. Matches:
- Terminator 2: Judgement Day (1991)
- Alien (1979)
- Star Wars OT (1977-1983)
- Apocalypse Now (1979)
- The Exorcist (1973)
- Donnie Darko (2001)
- Amadeus (1984)
- Payback (1999)
- Almost Famous (2000)');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('CR', 'Matches ''Crunchyroll'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('CRAV', 'Matches ''Crave'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('CRIT', 'Matches ''Criterion Channel'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Disney+ Enhancement', '');
INSERT INTO custom_formats (name, description) VALUES ('Dolby Atmos', 'Matches ''Atmos'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('Dolby Digital', 'Matches ''Dolby Digital'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('Dolby Digital +', 'Matches ''Dolby Digital +'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('Dolby Vision', 'Matches the ''Dolby Vision'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('Dolby Vision (Without Fallback)', 'Matches the ''Dolby Vision (Without Fallback) Regex Pattern');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('DRPO', 'Matches ''Dropout TV'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('DSNP', 'Matches ''Disney+'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('DTS', 'Matches ''DTS'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('DTS-ES', 'Matches ''DTS-ES'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('DTS-HD HRA', 'Matches ''DTS-HD HRA'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('DTS-HD MA', 'Matches ''DTS-HD MA'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('DTS-X', 'Matches ''DTS-X'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('DVD', 'The DVD format, or Digital Versatile Disc, is an optical disc storage medium widely used for video, audio, and data storage. It offers a standard capacity of 4.7 GB for single-layer discs and up to 8.5 GB for dual-layer discs, making it suitable for movies, software, and backups. DVDs provide a resolution of 720x480 (NTSC) or 720x576 (PAL) for video and support Dolby Digital or DTS audio for high-quality sound. They are compatible with standalone DVD players, computer drives, and gaming consoles, offering broad accessibility while requiring a physical disc for playback.');
INSERT INTO custom_formats (name, description) VALUES ('DVD Remux', 'A DVD Remux is a direct rip of a DVD''s content without any re-encoding, preserving the original video, audio, and subtitle quality. It retains the exact resolution, bitrate, and format of the DVD, ensuring no loss in fidelity compared to the source.');
INSERT INTO custom_formats (name, description) VALUES ('Extras', 'Matches the ''Extras'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('FLAC', 'Matches ''FLAC'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('FR Anime FanSub', 'Matches French anime fansub release groups');
INSERT INTO custom_formats (name, description) VALUES ('FR Anime Tier 01', 'Matches French anime release groups who fall under Anime Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR Anime Tier 02', 'Matches French anime release groups who fall under Anime Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR Anime Tier 03', 'Matches French anime release groups who fall under Anime Tier 03');
INSERT INTO custom_formats (name, description) VALUES ('FR Global Tier 01', 'Matches additional high-quality French release groups not covered by TRaSH French HQ tiers');
INSERT INTO custom_formats (name, description) VALUES ('FR Global Tier 02', 'Matches additional French release groups not covered by TRaSH French HQ tiers');
INSERT INTO custom_formats (name, description) VALUES ('FR HDLight Tier', 'Matches French HDLight release groups');
INSERT INTO custom_formats (name, description) VALUES ('FR LQ', 'Matches French low-quality release groups');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie HD Bluray Tier 01', 'Matches French movie release groups who fall under HD Bluray Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie HD Bluray Tier 02', 'Matches French movie release groups who fall under HD Bluray Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie Remux Tier 01', 'Matches French movie release groups who fall under Remux Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie Remux Tier 02', 'Matches French movie release groups who fall under Remux Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie UHD Bluray Tier 01', 'Matches French movie release groups who fall under UHD Bluray Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie UHD Bluray Tier 02', 'Matches French movie release groups who fall under UHD Bluray Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie WEB Tier 01', 'Matches French movie release groups who fall under WEB Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR Movie WEB Tier 02', 'Matches French movie release groups who fall under WEB Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR Scene Groups', 'Matches known French scene release groups');
INSERT INTO custom_formats (name, description) VALUES ('FR TV HD Bluray Tier 01', 'Matches French TV release groups who fall under HD Bluray Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR TV Remux Tier 01', 'Matches French TV release groups who fall under Remux Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR TV WEB Tier 01', 'Matches French TV release groups who fall under WEB Tier 01');
INSERT INTO custom_formats (name, description) VALUES ('FR TV WEB Tier 02', 'Matches French TV release groups who fall under WEB Tier 02');
INSERT INTO custom_formats (name, description) VALUES ('FR TV WEB Tier 03', 'Matches French TV release groups who fall under WEB Tier 03');
INSERT INTO custom_formats (name, description) VALUES ('French Missing', 'Rejects releases without an explicit French MULTi, French Original, VF, VOSTFR, or VFQ marker.');
INSERT INTO custom_formats (name, description) VALUES ('French MULTi', 'Prioritizes French MULTi releases without also matching VFQ or VOSTFR.');
INSERT INTO custom_formats (name, description) VALUES ('French Original Marker', 'Priorise les releases marquees VOF ou VOQ comme version originale francophone.');
INSERT INTO custom_formats (name, description) VALUES ('French VF', 'Prioritizes French dubbed releases when they are not MULTi, VOSTFR, or VFQ.');
INSERT INTO custom_formats (name, description) VALUES ('French VFQ', 'Rejects Quebec French releases from French profiles.');
INSERT INTO custom_formats (name, description) VALUES ('French VOSTFR', 'Allows lower-priority original-audio releases with French subtitles when they are not MULTi or VF.');
INSERT INTO custom_formats (name, description) VALUES ('Full Disc', 'Matches the ''Full Disc'' regex pattern and negates any remuxes / encodes. ');
INSERT INTO custom_formats (name, description) VALUES ('Full Disc (Quality Match)', 'Matches Full Discs using a Radarr Quality Match');
INSERT INTO custom_formats (name, description) VALUES ('German DL', '');
INSERT INTO custom_formats (name, description) VALUES ('h265', 'Matches ''h265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('h265 (Efficient)', 'Matches ''h265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('HBO Max Enhancement', '');
INSERT INTO custom_formats (name, description) VALUES ('HDR', 'Matches the ''HDR'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('HDR (Missing)', 'Attempts to match HDR in 1080p x265 Encodes labelled with x265');
INSERT INTO custom_formats (name, description) VALUES ('HDR10+', 'Matches the ''HDR10+'' Regex Pattern');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('HMAX', 'Matches ''HBO Max'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('HTSR', 'Matches ''Hotstar'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('HULU', 'Matches ''Hulu'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('iP', 'Matches ''BBC iPlayer'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('iT', 'Matches ''iTunes'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('iTunes Enhancement', '');
INSERT INTO custom_formats (name, description) VALUES ('Lossless Audio', 'Matches any Lossless Audio Track not in a 2160p Release.');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('MA', 'Matches ''Movies Anywhere'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('MAX', 'Matches ''Max'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Movies Anywhere Enhancement', '');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('MUBI', 'Matches ''Mubi'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('NF', 'Matches ''Netflix'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('NOW', 'Matches ''Now'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Opus', 'Matches ''Opus'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('PCM', 'Matches ''PCM'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('PCOK', 'Matches ''Peacock'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('PLAY', 'Matches ''Google TV'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('PMTP', 'Matches ''Paramount+'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Remux', 'Matches Remux as a codec, not a source. Either h265 or h264.');
INSERT INTO custom_formats (name, description) VALUES ('Repack1', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch basic level fixes (no number suffixes).');
INSERT INTO custom_formats (name, description) VALUES ('Repack2', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch level 2 fixes');
INSERT INTO custom_formats (name, description) VALUES ('Repack3', 'Release groups use specific terms to indicate when they''re fixing issues in releases:
In Scene releases, groups can only occupy one release slot, which leads to two different terms:
- PROPER is used when a different group fixes issues in another group''s release
- REPACK is used when a group fixes issues in their own release

P2P releases are simpler - REPACK is typically used whenever a group releases a fixed version.

REAL / RERIP indicate similar things but their specific meaning / origin is unclear.

This custom format will catch level 3 fixes');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('ROKU', 'Matches ''Roku'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('SDTV', 'Matches SDTV.');
INSERT INTO custom_formats (name, description) VALUES ('Season Pack', 'Matches Season Pack Release Type on Sonarr');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('SHO', 'Matches ''Showtime'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('Sing Along', '');
INSERT INTO custom_formats (name, description) VALUES ('Special Edition', 'Special editions are modified versions of movies released after the original theatrical version.

• They exist because filmmakers want to present their `true vision`, `fix problems`, or because studios want to make more money
• You''ll see them with names like `Director''s Cut`, `Extended Edition`, or creative marketing labels like `Ultimate Cut`
• A single film can have `multiple special editions` as technology improves or different creative perspectives emerge');
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('STAN', 'Matches ''STAN'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description, include_in_rename) VALUES ('SKST', 'Matches ''SkyShowtime'' WEB-DLs. Negates any encodes.', 1);
INSERT INTO custom_formats (name, description) VALUES ('TrueHD', 'Matches ''TrueHD'' Regex Pattern and negates any other audio types that might conflict.');
INSERT INTO custom_formats (name, description) VALUES ('TrueHD (Missing)', 'Attempts to match TrueHD releases which are not labelled correctly (TRiTON, EPSiLON groups)');
INSERT INTO custom_formats (name, description) VALUES ('UHD Bluray', 'UHD Blu-ray is a digital optical disc format released in 2016. It stores 66GB on triple-layer discs or 100GB on quad-layer discs, compared to standard Blu-ray''s 25GB/50GB capacity. The format delivers 3840x2160 (4K) resolution video using HEVC (H.265) encoding at bitrates up to 128Mbps. All UHD Blu-rays include HDR10 support, with some releases adding Dolby Vision or HDR10+. The format uses the BT.2020 color space and 10-bit color depth, while supporting audio formats like Dolby Atmos, DTS:X, DTS-HD MA, and Dolby TrueHD. UHD Blu-ray players require HDMI 2.0a and HDCP 2.2 compliant displays to show 4K HDR content.');
INSERT INTO custom_formats (name, description) VALUES ('UHD Bluray (Efficient)', 'UHD Blu-ray is a digital optical disc format released in 2016. It stores 66GB on triple-layer discs or 100GB on quad-layer discs, compared to standard Blu-ray''s 25GB/50GB capacity. The format delivers 3840x2160 (4K) resolution video using HEVC (H.265) encoding at bitrates up to 128Mbps. All UHD Blu-rays include HDR10 support, with some releases adding Dolby Vision or HDR10+. The format uses the BT.2020 color space and 10-bit color depth, while supporting audio formats like Dolby Atmos, DTS:X, DTS-HD MA, and Dolby TrueHD. UHD Blu-ray players require HDMI 2.0a and HDCP 2.2 compliant displays to show 4K HDR content.');
INSERT INTO custom_formats (name, description) VALUES ('Upscale', 'Matches the ''Upscale'' regex pattern

Radarr Version');
INSERT INTO custom_formats (name, description) VALUES ('VP9', 'Matches the ''VP9'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('VVC', 'Matches the ''VVC'' Regex Pattern');
INSERT INTO custom_formats (name, description) VALUES ('x264 (2160p)', 'Matches ''x264'' regex pattern only when 2160p is also found. ');
INSERT INTO custom_formats (name, description) VALUES ('x265', 'Matches ''x265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('x265 (Bluray)', 'Matches ''x265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('x265 (Efficient)', 'Matches ''x265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('x265 (Missing)', 'Attempts to match 2160p x265 encodes that aren''t labelled with any codec. ');
INSERT INTO custom_formats (name, description) VALUES ('x265 (Remux)', 'Matches ''x265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('x265 (WEB)', 'Matches ''x265'' regex pattern.');
INSERT INTO custom_formats (name, description) VALUES ('Xvid', 'Matches Xvid Regex');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = '1080p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDTV', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDTV Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEB-DL (h264)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEB-DL (h264)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'h264', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEB-DL (h264)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEBRip';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '1080p WEBRip';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '2160p Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '2160p Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '2160p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '2160p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '3D', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '3D';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '480p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '480p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '480p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '480p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '480p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '480p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '576p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '576p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '576p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '720p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = '720p Bluray';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '720p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDTV', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDTV Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p HDTV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '720p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p WEB-DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '720p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p WEBRip';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = '720p WEBRip';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AAC', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'AAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Amazon Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AMZN', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Amazon Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AMZN Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'AMZN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'AMZN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'AMZN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Atmos', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Atmos';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Atmos (BTN Standard)', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Atmos';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TrueHD', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Atmos (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '7.1 Surround', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Atmos (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Atmos', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Atmos (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Atmos (BTN)', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Atmos (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ATVP Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'ATVP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'ATVP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'ATVP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AV1', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'AV1';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BCORE Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'BCORE';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'BCORE';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'BCORE';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Better Theatricals', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Theatrical', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Extended Clip', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not IMAX', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Open Matte', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Sing Along', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Special Edition', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Better Theatricals';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CR Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'CR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CRAV Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'CRAV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CRAV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CRAV';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CRiT Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'CRIT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CRIT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'CRIT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Disney+ Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DSNP', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Disney+ Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Atmos', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Atmos';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Atmos';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dolby Digital', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dolby Digital +', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Digital +';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dolby Vision', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Vision';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dolby Vision (Without Fallback)', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DRPO Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DRPO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'DRPO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'DRPO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DNSP Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DSNP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'DSNP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'DSNP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-HD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-HD HRA ES', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-X', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-ES', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-X', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-ES';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-HD HRA', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-ES', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-X', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD HRA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-HD MA', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-HD HRA ES', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS-X', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-HD MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-X', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'DTS-X';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DVD', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DVD Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'DVD Remux';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FLAC', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not PCM', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FLAC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Anime-Heart', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Kaerizaki-Fansub', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Natsumi-no-Sekai', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NekoYu''', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Onii-ChanSub', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Owlolf', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Pikari-Teshima', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Seimeisen', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Team Arcedo', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Yarashii', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Yangire-Raws', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Kaoru Hana FR (KHFR)', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime FanSub';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Darki', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Delivroozzi', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Fuceo', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Good Job! Alexis', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Punisher694', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SR-71', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'T3KASHi', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TANOSHii', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TenmaLand', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Tsundere-Raws', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Aoi-Project', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Elecman', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FUJiSAN', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GundamGuy', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'IssouCorp', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KAF', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Nagutos', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OECUF', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'XSPITFIRE911', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BLV', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'D3T3R10R1TY', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Galactic', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HANAMi', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'kazuizui', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KHAYA', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KushEnthusiast', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'matheousse', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Monkey-D.Lulu', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NeoSG', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RONiN', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TheFantastics', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TTN', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Anime Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AMEN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'B@tman', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BOUBA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BOUC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FORWARD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GKS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KAAZA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'M@x', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OZEF', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'THESYNDICATE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TyHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AJP', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ATE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'COCAIN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CHiLL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'D4RK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DREAM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ENIGMA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GORE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HYPERION', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'J4CK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LKT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Maxadonf', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MULTiPLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'N3ZUKO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NEOSTARK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PRESTiGE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'R3MIX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SUPERFLU', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Themouche', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TLC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TMB', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TSR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZTM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Global Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PopHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GHT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PATOMiEL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'QTZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SANTACRUZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Xantar', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RiFiFi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PiXEL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Winks', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LiDHL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'mHDgz', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR HDLight Tier';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bandix', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'EXTREME', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GAIA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HMiDiMADRiDi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Hush', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KILLERMIX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LiBERTAD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LTM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MONiCO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NEWCINE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RPZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ShowFR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VERCLAM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ViKi47', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Wawa', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ACOOL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AlioZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ASPHiXiAS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AViTECH', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AZAZE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Balibalo', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BLABLASTREAM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DDLFRENCHORG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FERVEX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FReeZeR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GHOSTSPiRiT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GHZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GLaDOS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GZR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HEVCBay', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'JiHeff', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KR4K3N', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Matmatha', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MKVXTEAM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Monchat', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NLX5', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NOMAD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NORRIS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PiCKLES', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PREUMS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'qctimb3rlandqc', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ReBoT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ROLLED', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SCREEN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHiFT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SKRiN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TicaDow', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Tokushi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Tonyk', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TOXIC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TUTUTE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UNiKORN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Zombie', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Cpasbien', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CPB', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ANONA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'bigZT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Boheme', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BOL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CINeHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Cortex91', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DOLL4R', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dread Team', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Dropse', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'EZTV re', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FGT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Firetown', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FUN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDMIDIMADRIDI', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'JetAnime', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'L-O-L', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NewZT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RARBG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'STVFRV', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SubZero', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'T9', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Time2Watch', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TIREXO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Torrent9', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WebAnime', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'YIFY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'YTS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZONE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ARKRiL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BossBaby', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Champion9', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Copycomic', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CR4ZYTiME', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'EASPORTS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'EliteT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FUNKKY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FZTeam', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GOBO2S', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HD2', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LION', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LMPS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LNA3d', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MACK4', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MeMyl', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'METALLIKA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MGD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Moorea81', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Moviz', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Muxman', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Mystic', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MZC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MZiSYS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'N3TFL1X', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NoelMaison', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'nutella', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OMERTA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Papaya', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PIKACHU', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PULSE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Q7', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RELiC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SANCTUAIRE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHARKS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SP3CTR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Spow', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'STR4NGE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TeamSuW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TORRiD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TSN999', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TVPSLO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Upmix', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VATFER', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Wakanim', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WaNeZt', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WINCHESTER', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WITA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR LQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BDHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FoX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRATERNiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FrIeNdS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'YODA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDForever', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MARBLECAKE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MYSTERiON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NoNE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ONLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ONLYMOViE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TkHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UTT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BlackAngel', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Choco', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDForever', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ONLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Sicario', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Tezcat74', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TyrellCorp', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Zapax', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BDHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FtLi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Goldenyann', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KTM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MARBLECAKE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MUSTANG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Obi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PEPiTE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'QUEBEC63', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ROMKENT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie Remux Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not SDR', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FLOP', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRATERNiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FoX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not SDR', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DUSTiN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FCK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FrIeNdS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'QUALiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BONBON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FCK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FoX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRATERNiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FrIeNdS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MOONLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MTDK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PATOPESTO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SUPPLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TFA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TiNA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ALLDAYiN', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ARK01', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NEO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NoNe', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ONLYMOViE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'POTO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Slay3R', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TkHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WaCkS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Movie WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '4FR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AiR3D', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AiRDOCS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AiRFORCE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AiRLiNE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AiRTV', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AMB3R', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ANMWR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AVON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AYMO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AZR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BANKAi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BAWLS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BiPOLAR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BLACKPANTERS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BODIE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BOOLZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BRiNK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BTT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CARAPiLS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CiELOS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CiNEMA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CMBHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CoRa', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'COUAC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'CRYPT0', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'D4KiD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DEAL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DiEBEX', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DUPLI', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DUSS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ENJOi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'EUBDS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FiDELiO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FiDO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ForceBleue', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FREAMON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRENCHDEADPOOL2', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRiES', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FUTiL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FWDHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GHOULS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GiMBAP', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'GLiMMER', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Goatlove', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HERC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HiggsBoson', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HiRoSHiMa', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HYBRiS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HyDe', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'JMT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'JoKeR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'JUSTICELEAGUE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'KAZETV', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'L0SERNiGHT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LaoZi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LeON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LOFiDEL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LOST', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LOWIMDB', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LUCKY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LYPSG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAGiCAL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MANGACiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAXAGAZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MaxiBeNoul', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'McNULTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MELBA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MiND', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MORELAND', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MUNSTER', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MUxHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NERDHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NERO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NrZ', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NTK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OBSTACLE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OohLaLa', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'OOKAMI', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PANZeR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PATHECROUTE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Penrose', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PiNKPANTERS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PKPTRS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PRiDEHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PROPJOE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PURE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PUREWASTEOFBW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ROUGH', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RUDE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Ryotox', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SAFETY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SASHiMi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SEiGHT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SESKAPiLE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHEEEiT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHiNiGAMi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SiGeRiS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SILVIODANTE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SLEEPINGFOREST', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SODAPOP', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'S4LVE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SPINE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SPOiLER', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'STRINGERBELL', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Sunday26th', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SUNRiSE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'tFR', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'THENiGHTMAREiNHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'THiNK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'THREESOME', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TiMELiNE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TSuNaMi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UKDHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UKDTV', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ULSHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Ulysse', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UNSKiLLED', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'URY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VENUE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VFC', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VoMiT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Wednesday29th', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZEST', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ZiRCON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'AKLHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'N0Z00M', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PHoQUE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SharpHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'USURY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR Scene Groups';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ARK01', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BONBON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRATERNiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FTMVHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FtLi', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Goldenyann', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDForever', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ONLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TyrellCorp', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV Remux Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BONBON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FCK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FW', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FRATERNiTY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MTDK', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NoLo', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PATOPESTO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Psaro', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SUPPLY', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TFA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TiNA', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 01';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'COLL3CTiF', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FiND', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FrIeNdS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HeavyWeight', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NoNe', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'pERsO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'POTO', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RG', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'RiPiT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TAT', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 02';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ARK01', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BraD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'dRuIdE', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'FTMVHD', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'LAZARUS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MYSTERiON', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Scaph', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WaCkS', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WQM', 'release_group', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'FR TV WEB Tier 03';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French MULTi', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French Missing';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VF', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French Missing';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VOSTFR', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French Missing';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VFQ', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French Missing';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French Original Marker', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French Missing';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'French MULTi', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'French MULTi';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VFQ', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French MULTi';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VOSTFR', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French MULTi';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'French VF', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'French VF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French MULTi', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VOSTFR', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VFQ', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French Original Marker', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'French VFQ', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'French VFQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French Original Marker', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VFQ';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'French VOSTFR', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'French VOSTFR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French MULTi', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VOSTFR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VF', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VOSTFR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French VFQ', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VOSTFR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not French Original Marker', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'French VOSTFR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'French Original Marker', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'French Original Marker';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Full Disc', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not WEB-DL', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not WEBRip', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not HDTV', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not x264', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not x265', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'BRDISK', 'quality_modifier', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Full Disc (Quality Match)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'German DL', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'German DL';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'h265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'h265';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'h265';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'h265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'h265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'h265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 1080p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'h265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'HBO Max Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HMAX', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HBO Max Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAX', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HBO Max Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HMAX Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'HMAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HMAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HMAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HTSR Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'HTSR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HTSR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HTSR';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HULU Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'HULU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HULU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'HULU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'iP Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'iP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'iT Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'iT Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'iT';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'iTunes Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'iT', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'iTunes Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Lossless Audio';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-HD MA', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Lossless Audio';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'DTS-X', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Lossless Audio';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PCM', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Lossless Audio';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TrueHD', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'Lossless Audio';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MA Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MA';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAX Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MAX Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MAX';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Movies Anywhere Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MA', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Movies Anywhere Enhancement';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'MUBI Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'MUBI';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MUBI';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'MUBI';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NF Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'NF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NF';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NOW Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NOW';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'NOW Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NOW';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NOW';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'NOW';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Opus', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Opus';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not OPUS Release Group', 'release_group', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Opus';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PCM', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not AAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'PCM';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PCOK Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'PCOK';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PCOK';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PCOK';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PLAY Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PLAY';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PLAY Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PLAY';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PLAY';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PLAY';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'PMTP Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'PMTP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PMTP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'PMTP';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Repack1', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Repack1';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Repack2', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Repack2';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Repack3', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Repack3';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'ROKU Regex', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'ROKU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'ROKU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'ROKU';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Season Pack', 'release_type', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Season Pack';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHO Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'SHO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'SHO Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'SHO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'SHO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'SHO';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Sing Along', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Sing Along';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Special Edition', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not IMAX', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Open Matte', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Theatrical Edition', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Extended Clip', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Sing Along', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Special Edition';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'STAN Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'STAN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'STAN Rename Regex', 'release_title', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'STAN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEB-DL', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'STAN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'WEBRip', 'source', 'all', 0, 0
FROM custom_formats cf
WHERE cf.name = 'STAN';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'TrueHD', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Dolby Digital +', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Atmos', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DD+', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DTS', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not FLAC', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not TrueHD', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'TrueHD (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '1080p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'UHD Bluray (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'UHD Bluray', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'UHD Bluray (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'HDR', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'UHD Bluray (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VP9', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'VP9';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'VVC', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'VVC';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x264 (2160p)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x264', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x264 (2160p)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Bluray)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Bluray)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Bluray)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 1080p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Efficient)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, '2160p', 'resolution', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not Remux', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not x264', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not x265', 'release_title', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Missing)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Remux)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Remux', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Remux)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (Remux)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'x265', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (WEB)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not 2160p', 'resolution', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (WEB)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Bluray', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'x265 (WEB)';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Xvid', 'release_title', 'all', 0, 1
FROM custom_formats cf
WHERE cf.name = 'Xvid';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not DVD', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Xvid';
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required)
SELECT cf.name, 'Not HDTV', 'source', 'all', 1, 1
FROM custom_formats cf
WHERE cf.name = 'Xvid';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p Bluray' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p HDTV' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p Remux' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p WEB-DL' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p WEB-DL (h264)' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '1080p WEBRip' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '2160p Remux' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '2160p WEB-DL' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '3D' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '3D' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '480p Bluray' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '480p WEB-DL' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '576p Bluray' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '720p Bluray' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '720p HDTV' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '720p WEB-DL' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = '720p WEBRip' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'AAC' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Amazon Enhancement' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'AMZN' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'AMZN' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Atmos' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Atmos' AND t.name = 'Dolby';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Atmos (Missing)' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Atmos (Missing)' AND t.name = 'Dolby';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'ATVP' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'ATVP' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'AV1' AND t.name = 'Bleeding Edge';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'AV1' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'BCORE' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'BCORE' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Better Theatricals' AND t.name = 'Edition';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CR' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CR' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CRAV' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CRAV' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CRIT' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'CRIT' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Disney+ Enhancement' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Atmos' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Atmos' AND t.name = 'Dolby';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Digital' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Digital +' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Vision' AND t.name = 'Colour Grade';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Vision' AND t.name = 'HDR';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Vision (Without Fallback)' AND t.name = 'Colour Grade';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Dolby Vision (Without Fallback)' AND t.name = 'HDR';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DRPO' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DRPO' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DSNP' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DSNP' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DTS' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DTS-ES' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DTS-HD HRA' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DTS-HD MA' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DTS-X' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DVD Remux' AND t.name = 'Lossless';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DVD Remux' AND t.name = 'SD';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'DVD Remux' AND t.name = 'Source';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FLAC' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime FanSub' AND t.name = 'Anime';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime FanSub' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime FanSub' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 01' AND t.name = 'Anime';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 02' AND t.name = 'Anime';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 03' AND t.name = 'Anime';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 03' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Anime Tier 03' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 01' AND t.name = 'Release Group';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 02' AND t.name = 'Release Group';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Global Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR HDLight Tier' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR HDLight Tier' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR HDLight Tier' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR LQ' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR LQ' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR LQ' AND t.name = 'Release Group';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 01' AND t.name = 'Bluray';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 01' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 02' AND t.name = 'Bluray';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 02' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie HD Bluray Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 01' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 01' AND t.name = 'Remux';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 02' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie Remux Tier 02' AND t.name = 'Remux';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 01' AND t.name = '2160p';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 01' AND t.name = 'Bluray';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 01' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 02' AND t.name = '2160p';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 02' AND t.name = 'Bluray';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 02' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie UHD Bluray Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 01' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 01' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 02' AND t.name = 'Movie';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Movie WEB Tier 02' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Scene Groups' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Scene Groups' AND t.name = 'Release Group';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR Scene Groups' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV HD Bluray Tier 01' AND t.name = 'Bluray';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV HD Bluray Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV HD Bluray Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV HD Bluray Tier 01' AND t.name = 'TV';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV Remux Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV Remux Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV Remux Tier 01' AND t.name = 'Remux';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV Remux Tier 01' AND t.name = 'TV';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 01' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 01' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 01' AND t.name = 'TV';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 01' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 02' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 02' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 02' AND t.name = 'TV';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 02' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 03' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 03' AND t.name = 'Release Group Tier';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 03' AND t.name = 'TV';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'FR TV WEB Tier 03' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Missing' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Missing' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Missing' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French MULTi' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French MULTi' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Original Marker' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French Original Marker' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VF' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VF' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VFQ' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VFQ' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VFQ' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VOSTFR' AND t.name = 'French';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'French VOSTFR' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Full Disc' AND t.name = 'Storage';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Full Disc (Quality Match)' AND t.name = 'Storage';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'German DL' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'h265' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'h265 (Efficient)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HBO Max Enhancement' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HMAX' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HMAX' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HTSR' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HTSR' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HULU' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'HULU' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'iP' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'iP' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'iT' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'iT' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'iTunes Enhancement' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Lossless Audio' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MA' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MA' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MAX' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MAX' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Movies Anywhere Enhancement' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MUBI' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'MUBI' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'NF' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'NF' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'NOW' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'NOW' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Opus' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PCM' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PCOK' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PCOK' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PLAY' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PLAY' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PMTP' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'PMTP' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack1' AND t.name = 'Flag';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack1' AND t.name = 'Repack';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack2' AND t.name = 'Flag';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack2' AND t.name = 'Repack';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack3' AND t.name = 'Flag';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Repack3' AND t.name = 'Repack';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'ROKU' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'ROKU' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Season Pack' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'SHO' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'SHO' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Sing Along' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Sing Along' AND t.name = 'Edition';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Special Edition' AND t.name = 'Edition';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'STAN' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'STAN' AND t.name = 'WEB-DL';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'TrueHD' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'TrueHD (Missing)' AND t.name = 'Audio';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'UHD Bluray (Efficient)' AND t.name = '2160p';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'UHD Bluray (Efficient)' AND t.name = 'Storage';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'VP9' AND t.name = 'Bleeding Edge';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'VP9' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'VVC' AND t.name = 'Bleeding Edge';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'VVC' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x264 (2160p)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265 (Bluray)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265 (Efficient)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265 (Missing)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265 (Remux)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'x265 (WEB)' AND t.name = 'Codec';
INSERT INTO custom_format_tags (custom_format_name, tag_name)
SELECT cf.name, t.name
FROM custom_formats cf, tags t
WHERE cf.name = 'Xvid' AND t.name = 'Codec';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p Bluray', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p HDTV', 'HDTV Regex', re.name
FROM regular_expressions re
WHERE re.name = 'HDTV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p Remux', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '1080p WEB-DL (h264)', 'h264', re.name
FROM regular_expressions re
WHERE re.name = 'AVC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '2160p Remux', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '3D', '3D', re.name
FROM regular_expressions re
WHERE re.name = '3D';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '720p Bluray', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT '720p HDTV', 'HDTV Regex', re.name
FROM regular_expressions re
WHERE re.name = 'HDTV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AAC', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Amazon Enhancement', 'AMZN', re.name
FROM regular_expressions re
WHERE re.name = 'Amazon Prime';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AMZN', 'AMZN Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Amazon Prime';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos', 'Atmos', re.name
FROM regular_expressions re
WHERE re.name = 'Atmos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos', 'Atmos (BTN Standard)', re.name
FROM regular_expressions re
WHERE re.name = 'BTN Atmos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos (Missing)', 'TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos (Missing)', '7.1 Surround', re.name
FROM regular_expressions re
WHERE re.name = '7.1 Surround';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos (Missing)', 'Not Atmos', re.name
FROM regular_expressions re
WHERE re.name = 'Atmos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Atmos (Missing)', 'Not Atmos (BTN)', re.name
FROM regular_expressions re
WHERE re.name = 'BTN Atmos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'ATVP', 'ATVP Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Apple TV+';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'AV1', 'AV1', re.name
FROM regular_expressions re
WHERE re.name = 'AV1';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'BCORE', 'BCORE Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Bravia Core';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Better Theatricals', re.name
FROM regular_expressions re
WHERE re.name = 'Better Theatricals';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Theatrical', re.name
FROM regular_expressions re
WHERE re.name = 'Theatrical Edition';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Not Extended Clip', re.name
FROM regular_expressions re
WHERE re.name = 'Extended Clip';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Not IMAX', re.name
FROM regular_expressions re
WHERE re.name = 'IMAX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Not Open Matte', re.name
FROM regular_expressions re
WHERE re.name = 'Open Matte';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Not Sing Along', re.name
FROM regular_expressions re
WHERE re.name = 'Sing Along';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Better Theatricals', 'Not Special Edition', re.name
FROM regular_expressions re
WHERE re.name = 'Special Edition';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'CR', 'CR Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Crunchyroll';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'CRAV', 'CRAV Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Crave';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'CRIT', 'CRiT Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Criterion Channel';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Disney+ Enhancement', 'DSNP', re.name
FROM regular_expressions re
WHERE re.name = 'Disney+';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Atmos', 'Atmos', re.name
FROM regular_expressions re
WHERE re.name = 'Atmos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Atmos', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Digital +', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Vision', 'Dolby Vision', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Vision';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Dolby Vision (Without Fallback)', 'Dolby Vision (Without Fallback)', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Vision (Without Fallback)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DRPO', 'DRPO Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Dropout TV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DSNP', 'DNSP Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Disney+';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not DTS-HD', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD MA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not DTS-HD HRA ES', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD HRA ES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'DTS-ES', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-ES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS Basic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-ES', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'DTS-HD HRA', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD HRA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS Basic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not DTS-ES', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-ES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD HRA', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'DTS-HD MA', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD MA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not DTS-HD HRA ES', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD HRA ES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-HD MA', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS Basic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DTS-X', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'DVD Remux', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FLAC', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Anime-Heart', re.name
FROM regular_expressions re
WHERE re.name = 'Anime Heart';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Kaerizaki-Fansub', re.name
FROM regular_expressions re
WHERE re.name = 'Kaerizaki Fansub';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Natsumi-no-Sekai', re.name
FROM regular_expressions re
WHERE re.name = 'Natsumi no Sekai';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'NekoYu''', re.name
FROM regular_expressions re
WHERE re.name = 'NekoYu';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Onii-ChanSub', re.name
FROM regular_expressions re
WHERE re.name = 'Onii ChanSub';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Owlolf', re.name
FROM regular_expressions re
WHERE re.name = 'Owlolf';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Pikari-Teshima', re.name
FROM regular_expressions re
WHERE re.name = 'Pikari Teshima';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Seimeisen', re.name
FROM regular_expressions re
WHERE re.name = 'Seimeisen';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Team Arcedo', re.name
FROM regular_expressions re
WHERE re.name = 'Arcedo';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Yarashii', re.name
FROM regular_expressions re
WHERE re.name = 'Yarashii';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Yangire-Raws', re.name
FROM regular_expressions re
WHERE re.name = 'Yangire Raws';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime FanSub', 'Kaoru Hana FR (KHFR)', re.name
FROM regular_expressions re
WHERE re.name = 'KHFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Darki', re.name
FROM regular_expressions re
WHERE re.name = 'Darki';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Delivroozzi', re.name
FROM regular_expressions re
WHERE re.name = 'Delivroozzi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Fuceo', re.name
FROM regular_expressions re
WHERE re.name = 'Fuceo';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Good Job! Alexis', re.name
FROM regular_expressions re
WHERE re.name = 'Good Alexis';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Punisher694', re.name
FROM regular_expressions re
WHERE re.name = 'Punisher694';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'SR-71', re.name
FROM regular_expressions re
WHERE re.name = 'SR-71';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'T3KASHi', re.name
FROM regular_expressions re
WHERE re.name = 'T3KASHi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'TANOSHii', re.name
FROM regular_expressions re
WHERE re.name = 'TANOSHii';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'TenmaLand', re.name
FROM regular_expressions re
WHERE re.name = 'TenmaLand';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 01', 'Tsundere-Raws', re.name
FROM regular_expressions re
WHERE re.name = 'Tsundere Raws';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'Aoi-Project', re.name
FROM regular_expressions re
WHERE re.name = 'Aoi Project';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'Elecman', re.name
FROM regular_expressions re
WHERE re.name = 'Elecman';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'FUJiSAN', re.name
FROM regular_expressions re
WHERE re.name = 'FUJiSAN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'GundamGuy', re.name
FROM regular_expressions re
WHERE re.name = 'GundamGuy';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'IssouCorp', re.name
FROM regular_expressions re
WHERE re.name = 'IssouCorp';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'KAF', re.name
FROM regular_expressions re
WHERE re.name = 'KAF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'Nagutos', re.name
FROM regular_expressions re
WHERE re.name = 'Nagutos';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'OECUF', re.name
FROM regular_expressions re
WHERE re.name = 'OECUF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 02', 'XSPITFIRE911', re.name
FROM regular_expressions re
WHERE re.name = 'XSPITFIRE911';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'BLV', re.name
FROM regular_expressions re
WHERE re.name = 'BLV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'D3T3R10R1TY', re.name
FROM regular_expressions re
WHERE re.name = 'D3T3R10R1TY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'Galactic', re.name
FROM regular_expressions re
WHERE re.name = 'Galactic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'HANAMi', re.name
FROM regular_expressions re
WHERE re.name = 'HANAMi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'kazuizui', re.name
FROM regular_expressions re
WHERE re.name = 'kazuizui';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'KHAYA', re.name
FROM regular_expressions re
WHERE re.name = 'KHAYA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'KushEnthusiast', re.name
FROM regular_expressions re
WHERE re.name = 'KushEnthusiast';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'matheousse', re.name
FROM regular_expressions re
WHERE re.name = 'matheousse';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'Monkey-D.Lulu', re.name
FROM regular_expressions re
WHERE re.name = 'Monkey D Lulu';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'NeoSG', re.name
FROM regular_expressions re
WHERE re.name = 'NeoSG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'RONiN', re.name
FROM regular_expressions re
WHERE re.name = 'RONiN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'TheFantastics', re.name
FROM regular_expressions re
WHERE re.name = 'TheFantastics';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Anime Tier 03', 'TTN', re.name
FROM regular_expressions re
WHERE re.name = 'TTN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'AMEN', re.name
FROM regular_expressions re
WHERE re.name = 'AMEN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'B@tman', re.name
FROM regular_expressions re
WHERE re.name = 'B@tman';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'BOUBA', re.name
FROM regular_expressions re
WHERE re.name = 'BOUBA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'BOUC', re.name
FROM regular_expressions re
WHERE re.name = 'BOUC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'FORWARD', re.name
FROM regular_expressions re
WHERE re.name = 'FORWARD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'GKS', re.name
FROM regular_expressions re
WHERE re.name = 'GKS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'KAAZA', re.name
FROM regular_expressions re
WHERE re.name = 'KAAZA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'M@x', re.name
FROM regular_expressions re
WHERE re.name = 'M@x';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'OZEF', re.name
FROM regular_expressions re
WHERE re.name = 'OZEF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'THESYNDICATE', re.name
FROM regular_expressions re
WHERE re.name = 'THESYNDICATE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 01', 'TyHD', re.name
FROM regular_expressions re
WHERE re.name = 'TyHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'AJP', re.name
FROM regular_expressions re
WHERE re.name = 'AJP';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'ATE', re.name
FROM regular_expressions re
WHERE re.name = 'ATE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'COCAIN', re.name
FROM regular_expressions re
WHERE re.name = 'COCAIN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'CHiLL', re.name
FROM regular_expressions re
WHERE re.name = 'CHiLL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'D4RK', re.name
FROM regular_expressions re
WHERE re.name = 'D4RK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'DREAM', re.name
FROM regular_expressions re
WHERE re.name = 'DREAM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'ENIGMA', re.name
FROM regular_expressions re
WHERE re.name = 'ENIGMA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'GORE', re.name
FROM regular_expressions re
WHERE re.name = 'GORE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'HYPERION', re.name
FROM regular_expressions re
WHERE re.name = 'HYPERION';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'J4CK', re.name
FROM regular_expressions re
WHERE re.name = 'J4CK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'LKT', re.name
FROM regular_expressions re
WHERE re.name = 'LKT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'Maxadonf', re.name
FROM regular_expressions re
WHERE re.name = 'Maxadonf';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'MULTiPLY', re.name
FROM regular_expressions re
WHERE re.name = 'MULTiPLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'N3ZUKO', re.name
FROM regular_expressions re
WHERE re.name = 'N3ZUKO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'NEOSTARK', re.name
FROM regular_expressions re
WHERE re.name = 'NEOSTARK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'PRESTiGE', re.name
FROM regular_expressions re
WHERE re.name = 'PRESTiGE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'R3MIX', re.name
FROM regular_expressions re
WHERE re.name = 'R3MIX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'SUPERFLU', re.name
FROM regular_expressions re
WHERE re.name = 'SUPERFLU';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'Themouche', re.name
FROM regular_expressions re
WHERE re.name = 'Themouche';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'TLC', re.name
FROM regular_expressions re
WHERE re.name = 'TLC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'TMB', re.name
FROM regular_expressions re
WHERE re.name = 'TMB';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'TSR', re.name
FROM regular_expressions re
WHERE re.name = 'TSR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Global Tier 02', 'ZTM', re.name
FROM regular_expressions re
WHERE re.name = 'ZTM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'PopHD', re.name
FROM regular_expressions re
WHERE re.name = 'PopHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'AW', re.name
FROM regular_expressions re
WHERE re.name = 'AW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'GHT', re.name
FROM regular_expressions re
WHERE re.name = 'GHT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'PATOMiEL', re.name
FROM regular_expressions re
WHERE re.name = 'PATOMiEL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'QTZ', re.name
FROM regular_expressions re
WHERE re.name = 'QTZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'SANTACRUZ', re.name
FROM regular_expressions re
WHERE re.name = 'SANTACRUZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'Xantar', re.name
FROM regular_expressions re
WHERE re.name = 'Xantar';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'RiFiFi', re.name
FROM regular_expressions re
WHERE re.name = 'RiFiFi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'PiXEL', re.name
FROM regular_expressions re
WHERE re.name = 'PiXEL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'Winks', re.name
FROM regular_expressions re
WHERE re.name = 'Winks';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'LiDHL', re.name
FROM regular_expressions re
WHERE re.name = 'LiDHL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR HDLight Tier', 'mHDgz', re.name
FROM regular_expressions re
WHERE re.name = 'mHDgz';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Bandix', re.name
FROM regular_expressions re
WHERE re.name = 'Bandix';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'CZ', re.name
FROM regular_expressions re
WHERE re.name = 'CZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'EXTREME', re.name
FROM regular_expressions re
WHERE re.name = 'EXTREME';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GAIA', re.name
FROM regular_expressions re
WHERE re.name = 'GAIA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'HMiDiMADRiDi', re.name
FROM regular_expressions re
WHERE re.name = 'HMiDiMADRiDi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Hush', re.name
FROM regular_expressions re
WHERE re.name = 'Hush';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'KILLERMIX', re.name
FROM regular_expressions re
WHERE re.name = 'KILLERMIX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'LiBERTAD', re.name
FROM regular_expressions re
WHERE re.name = 'LiBERTAD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'LTM', re.name
FROM regular_expressions re
WHERE re.name = 'LTM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MONiCO', re.name
FROM regular_expressions re
WHERE re.name = 'MONiCO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NEWCINE', re.name
FROM regular_expressions re
WHERE re.name = 'NEWCINE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'RPZ', re.name
FROM regular_expressions re
WHERE re.name = 'RPZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ShowFR', re.name
FROM regular_expressions re
WHERE re.name = 'ShowFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'VERCLAM', re.name
FROM regular_expressions re
WHERE re.name = 'VERCLAM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ViKi47', re.name
FROM regular_expressions re
WHERE re.name = 'ViKi47';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Wawa', re.name
FROM regular_expressions re
WHERE re.name = 'Wawa';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ZW', re.name
FROM regular_expressions re
WHERE re.name = 'ZW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ACOOL', re.name
FROM regular_expressions re
WHERE re.name = 'ACOOL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'AlioZ', re.name
FROM regular_expressions re
WHERE re.name = 'AlioZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ASPHiXiAS', re.name
FROM regular_expressions re
WHERE re.name = 'ASPHiXiAS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'AViTECH', re.name
FROM regular_expressions re
WHERE re.name = 'AViTECH';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'AZAZE', re.name
FROM regular_expressions re
WHERE re.name = 'AZAZE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Balibalo', re.name
FROM regular_expressions re
WHERE re.name = 'Balibalo';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'BLABLASTREAM', re.name
FROM regular_expressions re
WHERE re.name = 'BLABLASTREAM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'DDLFRENCHORG', re.name
FROM regular_expressions re
WHERE re.name = 'DDLFRENCHORG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FERVEX', re.name
FROM regular_expressions re
WHERE re.name = 'FERVEX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FReeZeR', re.name
FROM regular_expressions re
WHERE re.name = 'FReeZeR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GHOSTSPiRiT', re.name
FROM regular_expressions re
WHERE re.name = 'GHOSTSPiRiT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GHZ', re.name
FROM regular_expressions re
WHERE re.name = 'GHZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GLaDOS', re.name
FROM regular_expressions re
WHERE re.name = 'GLaDOS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GZR', re.name
FROM regular_expressions re
WHERE re.name = 'GZR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'HEVCBay', re.name
FROM regular_expressions re
WHERE re.name = 'HEVCBay';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'JiHeff', re.name
FROM regular_expressions re
WHERE re.name = 'JiHeff';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'KR4K3N', re.name
FROM regular_expressions re
WHERE re.name = 'KR4K3N';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Matmatha', re.name
FROM regular_expressions re
WHERE re.name = 'Matmatha';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MKVXTEAM', re.name
FROM regular_expressions re
WHERE re.name = 'MKVXTEAM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Monchat', re.name
FROM regular_expressions re
WHERE re.name = 'Monchat';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NLX5', re.name
FROM regular_expressions re
WHERE re.name = 'NLX5';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NOMAD', re.name
FROM regular_expressions re
WHERE re.name = 'NOMAD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NORRIS', re.name
FROM regular_expressions re
WHERE re.name = 'NORRIS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'PiCKLES', re.name
FROM regular_expressions re
WHERE re.name = 'PiCKLES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'PREUMS', re.name
FROM regular_expressions re
WHERE re.name = 'PREUMS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'qctimb3rlandqc', re.name
FROM regular_expressions re
WHERE re.name = 'qctimb3rlandqc';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ReBoT', re.name
FROM regular_expressions re
WHERE re.name = 'ReBoT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ROLLED', re.name
FROM regular_expressions re
WHERE re.name = 'ROLLED';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SCREEN', re.name
FROM regular_expressions re
WHERE re.name = 'SCREEN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SHiFT', re.name
FROM regular_expressions re
WHERE re.name = 'SHiFT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SKRiN', re.name
FROM regular_expressions re
WHERE re.name = 'SKRiN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TicaDow', re.name
FROM regular_expressions re
WHERE re.name = 'TicaDow';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Tokushi', re.name
FROM regular_expressions re
WHERE re.name = 'Tokushi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Tonyk', re.name
FROM regular_expressions re
WHERE re.name = 'Tonyk';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TOXIC', re.name
FROM regular_expressions re
WHERE re.name = 'TOXIC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TUTUTE', re.name
FROM regular_expressions re
WHERE re.name = 'TUTUTE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'UNiKORN', re.name
FROM regular_expressions re
WHERE re.name = 'UNiKORN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Zombie', re.name
FROM regular_expressions re
WHERE re.name = 'Zombie';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Cpasbien', re.name
FROM regular_expressions re
WHERE re.name = 'Cpasbien';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'CPB', re.name
FROM regular_expressions re
WHERE re.name = 'CPB';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ANONA', re.name
FROM regular_expressions re
WHERE re.name = 'ANONA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'AT', re.name
FROM regular_expressions re
WHERE re.name = 'AT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'bigZT', re.name
FROM regular_expressions re
WHERE re.name = 'bigZT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Boheme', re.name
FROM regular_expressions re
WHERE re.name = 'Boheme';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'BOL', re.name
FROM regular_expressions re
WHERE re.name = 'BOL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'CINeHD', re.name
FROM regular_expressions re
WHERE re.name = 'CINeHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Cortex91', re.name
FROM regular_expressions re
WHERE re.name = 'Cortex91';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'DOLL4R', re.name
FROM regular_expressions re
WHERE re.name = 'DOLL4R';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Dread Team', re.name
FROM regular_expressions re
WHERE re.name = 'Dread Team';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Dropse', re.name
FROM regular_expressions re
WHERE re.name = 'Dropse';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'EZTV re', re.name
FROM regular_expressions re
WHERE re.name = 'EZTV re';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FGT', re.name
FROM regular_expressions re
WHERE re.name = 'FGT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Firetown', re.name
FROM regular_expressions re
WHERE re.name = 'Firetown';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FUN', re.name
FROM regular_expressions re
WHERE re.name = 'FUN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'HDMIDIMADRIDI', re.name
FROM regular_expressions re
WHERE re.name = 'HDMIDIMADRIDI';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'JetAnime', re.name
FROM regular_expressions re
WHERE re.name = 'JetAnime';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'L-O-L', re.name
FROM regular_expressions re
WHERE re.name = 'L-O-L';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NewZT', re.name
FROM regular_expressions re
WHERE re.name = 'NewZT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NG', re.name
FROM regular_expressions re
WHERE re.name = 'NG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'RARBG', re.name
FROM regular_expressions re
WHERE re.name = 'RARBG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'STVFRV', re.name
FROM regular_expressions re
WHERE re.name = 'STVFRV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SubZero', re.name
FROM regular_expressions re
WHERE re.name = 'SubZero';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'T9', re.name
FROM regular_expressions re
WHERE re.name = 'T9';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Time2Watch', re.name
FROM regular_expressions re
WHERE re.name = 'Time2Watch';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TIREXO', re.name
FROM regular_expressions re
WHERE re.name = 'TIREXO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Torrent9', re.name
FROM regular_expressions re
WHERE re.name = 'Torrent9';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'WebAnime', re.name
FROM regular_expressions re
WHERE re.name = 'WebAnime';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'YIFY', re.name
FROM regular_expressions re
WHERE re.name = 'YIFY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'YTS', re.name
FROM regular_expressions re
WHERE re.name = 'YTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ZONE', re.name
FROM regular_expressions re
WHERE re.name = 'ZONE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ZT', re.name
FROM regular_expressions re
WHERE re.name = 'ZT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'ARKRiL', re.name
FROM regular_expressions re
WHERE re.name = 'ARKRiL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'BossBaby', re.name
FROM regular_expressions re
WHERE re.name = 'BossBaby';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Champion9', re.name
FROM regular_expressions re
WHERE re.name = 'Champion9';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Copycomic', re.name
FROM regular_expressions re
WHERE re.name = 'Copycomic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'CR4ZYTiME', re.name
FROM regular_expressions re
WHERE re.name = 'CR4ZYTiME';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'EASPORTS', re.name
FROM regular_expressions re
WHERE re.name = 'EASPORTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'EliteT', re.name
FROM regular_expressions re
WHERE re.name = 'EliteT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FUNKKY', re.name
FROM regular_expressions re
WHERE re.name = 'FUNKKY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'FZTeam', re.name
FROM regular_expressions re
WHERE re.name = 'FZTeam';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'GOBO2S', re.name
FROM regular_expressions re
WHERE re.name = 'GOBO2S';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'HD2', re.name
FROM regular_expressions re
WHERE re.name = 'HD2';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'LION', re.name
FROM regular_expressions re
WHERE re.name = 'LION';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'LMPS', re.name
FROM regular_expressions re
WHERE re.name = 'LMPS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'LNA3d', re.name
FROM regular_expressions re
WHERE re.name = 'LNA3d';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MACK4', re.name
FROM regular_expressions re
WHERE re.name = 'MACK4';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MeMyl', re.name
FROM regular_expressions re
WHERE re.name = 'MeMyl';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'METALLIKA', re.name
FROM regular_expressions re
WHERE re.name = 'METALLIKA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MGD', re.name
FROM regular_expressions re
WHERE re.name = 'MGD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Moorea81', re.name
FROM regular_expressions re
WHERE re.name = 'Moorea81';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Moviz', re.name
FROM regular_expressions re
WHERE re.name = 'Moviz';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Muxman', re.name
FROM regular_expressions re
WHERE re.name = 'Muxman';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Mystic', re.name
FROM regular_expressions re
WHERE re.name = 'Mystic';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MZC', re.name
FROM regular_expressions re
WHERE re.name = 'MZC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'MZiSYS', re.name
FROM regular_expressions re
WHERE re.name = 'MZiSYS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'N3TFL1X', re.name
FROM regular_expressions re
WHERE re.name = 'N3TFL1X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'NoelMaison', re.name
FROM regular_expressions re
WHERE re.name = 'NoelMaison';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'nutella', re.name
FROM regular_expressions re
WHERE re.name = 'nutella';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'OMERTA', re.name
FROM regular_expressions re
WHERE re.name = 'OMERTA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Papaya', re.name
FROM regular_expressions re
WHERE re.name = 'Papaya';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'PIKACHU', re.name
FROM regular_expressions re
WHERE re.name = 'PIKACHU';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'PULSE', re.name
FROM regular_expressions re
WHERE re.name = 'PULSE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Q7', re.name
FROM regular_expressions re
WHERE re.name = 'Q7';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'RELiC', re.name
FROM regular_expressions re
WHERE re.name = 'RELiC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SANCTUAIRE', re.name
FROM regular_expressions re
WHERE re.name = 'SANCTUAIRE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SHARKS', re.name
FROM regular_expressions re
WHERE re.name = 'SHARKS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'SP3CTR', re.name
FROM regular_expressions re
WHERE re.name = 'SP3CTR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Spow', re.name
FROM regular_expressions re
WHERE re.name = 'Spow';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'STR4NGE', re.name
FROM regular_expressions re
WHERE re.name = 'STR4NGE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TeamSuW', re.name
FROM regular_expressions re
WHERE re.name = 'TeamSuW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TORRiD', re.name
FROM regular_expressions re
WHERE re.name = 'TORRiD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TSN999', re.name
FROM regular_expressions re
WHERE re.name = 'TSN999';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'TVPSLO', re.name
FROM regular_expressions re
WHERE re.name = 'TVPSLO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Upmix', re.name
FROM regular_expressions re
WHERE re.name = 'Upmix';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'VATFER', re.name
FROM regular_expressions re
WHERE re.name = 'VATFER';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'Wakanim', re.name
FROM regular_expressions re
WHERE re.name = 'Wakanim';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'WaNeZt', re.name
FROM regular_expressions re
WHERE re.name = 'WaNeZt';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'WINCHESTER', re.name
FROM regular_expressions re
WHERE re.name = 'WINCHESTER';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR LQ', 'WITA', re.name
FROM regular_expressions re
WHERE re.name = 'WITA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'BDHD', re.name
FROM regular_expressions re
WHERE re.name = 'BDHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'FoX', re.name
FROM regular_expressions re
WHERE re.name = 'FoX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'FRATERNiTY', re.name
FROM regular_expressions re
WHERE re.name = 'FRATERNiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'FrIeNdS', re.name
FROM regular_expressions re
WHERE re.name = 'FrIeNdS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'MAX', re.name
FROM regular_expressions re
WHERE re.name = 'MAX (Release Group)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 01', 'YODA', re.name
FROM regular_expressions re
WHERE re.name = 'YODA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'HDForever', re.name
FROM regular_expressions re
WHERE re.name = 'HDForever';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'MARBLECAKE', re.name
FROM regular_expressions re
WHERE re.name = 'MARBLECAKE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'MYSTERiON', re.name
FROM regular_expressions re
WHERE re.name = 'MYSTERiON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'NoNE', re.name
FROM regular_expressions re
WHERE re.name = 'NoNE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'ONLY', re.name
FROM regular_expressions re
WHERE re.name = 'ONLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'ONLYMOViE', re.name
FROM regular_expressions re
WHERE re.name = 'ONLYMOViE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'TkHD', re.name
FROM regular_expressions re
WHERE re.name = 'TkHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie HD Bluray Tier 02', 'UTT', re.name
FROM regular_expressions re
WHERE re.name = 'UTT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'BlackAngel', re.name
FROM regular_expressions re
WHERE re.name = 'BlackAngel';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Choco', re.name
FROM regular_expressions re
WHERE re.name = 'Choco';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'HDForever', re.name
FROM regular_expressions re
WHERE re.name = 'HDForever';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'MAX', re.name
FROM regular_expressions re
WHERE re.name = 'MAX (Release Group)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'ONLY', re.name
FROM regular_expressions re
WHERE re.name = 'ONLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Sicario', re.name
FROM regular_expressions re
WHERE re.name = 'Sicario';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Tezcat74', re.name
FROM regular_expressions re
WHERE re.name = 'Tezcat74';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'TyrellCorp', re.name
FROM regular_expressions re
WHERE re.name = 'TyrellCorp';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 01', 'Zapax', re.name
FROM regular_expressions re
WHERE re.name = 'Zapax';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'BDHD', re.name
FROM regular_expressions re
WHERE re.name = 'BDHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'FtLi', re.name
FROM regular_expressions re
WHERE re.name = 'FtLi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'Goldenyann', re.name
FROM regular_expressions re
WHERE re.name = 'Goldenyann';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'KTM', re.name
FROM regular_expressions re
WHERE re.name = 'KTM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'MARBLECAKE', re.name
FROM regular_expressions re
WHERE re.name = 'MARBLECAKE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'MUSTANG', re.name
FROM regular_expressions re
WHERE re.name = 'MUSTANG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'Obi', re.name
FROM regular_expressions re
WHERE re.name = 'Obi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'PEPiTE', re.name
FROM regular_expressions re
WHERE re.name = 'PEPiTE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'QUEBEC63', re.name
FROM regular_expressions re
WHERE re.name = 'QC63';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie Remux Tier 02', 'ROMKENT', re.name
FROM regular_expressions re
WHERE re.name = 'ROMKENT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'Not SDR', re.name
FROM regular_expressions re
WHERE re.name = 'SDR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'FLOP', re.name
FROM regular_expressions re
WHERE re.name = 'FLOP';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'FRATERNiTY', re.name
FROM regular_expressions re
WHERE re.name = 'FRATERNiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'FoX', re.name
FROM regular_expressions re
WHERE re.name = 'FoX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'Not SDR', re.name
FROM regular_expressions re
WHERE re.name = 'SDR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'DUSTiN', re.name
FROM regular_expressions re
WHERE re.name = 'DUSTiN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'FCK', re.name
FROM regular_expressions re
WHERE re.name = 'FCK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'FrIeNdS', re.name
FROM regular_expressions re
WHERE re.name = 'FrIeNdS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie UHD Bluray Tier 02', 'QUALiTY', re.name
FROM regular_expressions re
WHERE re.name = 'QUALiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'BONBON', re.name
FROM regular_expressions re
WHERE re.name = 'BONBON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'FCK', re.name
FROM regular_expressions re
WHERE re.name = 'FCK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'FW', re.name
FROM regular_expressions re
WHERE re.name = 'FW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'FoX', re.name
FROM regular_expressions re
WHERE re.name = 'FoX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'FRATERNiTY', re.name
FROM regular_expressions re
WHERE re.name = 'FRATERNiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'FrIeNdS', re.name
FROM regular_expressions re
WHERE re.name = 'FrIeNdS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'MOONLY', re.name
FROM regular_expressions re
WHERE re.name = 'MOONLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'MTDK', re.name
FROM regular_expressions re
WHERE re.name = 'MTDK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'PATOPESTO', re.name
FROM regular_expressions re
WHERE re.name = 'PATOPESTO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'RG', re.name
FROM regular_expressions re
WHERE re.name = 'RG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'SUPPLY', re.name
FROM regular_expressions re
WHERE re.name = 'SUPPLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'TFA', re.name
FROM regular_expressions re
WHERE re.name = 'TFA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 01', 'TiNA', re.name
FROM regular_expressions re
WHERE re.name = 'TiNA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'ALLDAYiN', re.name
FROM regular_expressions re
WHERE re.name = 'ALLDAYiN';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'ARK01', re.name
FROM regular_expressions re
WHERE re.name = 'ARK01';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'NEO', re.name
FROM regular_expressions re
WHERE re.name = 'NEO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'NoNe', re.name
FROM regular_expressions re
WHERE re.name = 'NoNE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'ONLYMOViE', re.name
FROM regular_expressions re
WHERE re.name = 'ONLYMOViE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'POTO', re.name
FROM regular_expressions re
WHERE re.name = 'POTO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'Slay3R', re.name
FROM regular_expressions re
WHERE re.name = 'Slay3R';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'TkHD', re.name
FROM regular_expressions re
WHERE re.name = 'TkHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Movie WEB Tier 02', 'WaCkS', re.name
FROM regular_expressions re
WHERE re.name = 'WaCkS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', '4FR', re.name
FROM regular_expressions re
WHERE re.name = '4FR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AiR3D', re.name
FROM regular_expressions re
WHERE re.name = 'AiR3D';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AiRDOCS', re.name
FROM regular_expressions re
WHERE re.name = 'AiRDOCS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AiRFORCE', re.name
FROM regular_expressions re
WHERE re.name = 'AiRFORCE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AiRLiNE', re.name
FROM regular_expressions re
WHERE re.name = 'AiRLiNE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AiRTV', re.name
FROM regular_expressions re
WHERE re.name = 'AiRTV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AMB3R', re.name
FROM regular_expressions re
WHERE re.name = 'AMB3R';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ANMWR', re.name
FROM regular_expressions re
WHERE re.name = 'ANMWR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AVON', re.name
FROM regular_expressions re
WHERE re.name = 'AVON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AYMO', re.name
FROM regular_expressions re
WHERE re.name = 'AYMO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AZR', re.name
FROM regular_expressions re
WHERE re.name = 'AZR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BANKAi', re.name
FROM regular_expressions re
WHERE re.name = 'BANKAi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BAWLS', re.name
FROM regular_expressions re
WHERE re.name = 'BAWLS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BiPOLAR', re.name
FROM regular_expressions re
WHERE re.name = 'BiPOLAR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BLACKPANTERS', re.name
FROM regular_expressions re
WHERE re.name = 'BLACKPANTERS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BODIE', re.name
FROM regular_expressions re
WHERE re.name = 'BODIE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BOOLZ', re.name
FROM regular_expressions re
WHERE re.name = 'BOOLZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BRiNK', re.name
FROM regular_expressions re
WHERE re.name = 'BRiNK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'BTT', re.name
FROM regular_expressions re
WHERE re.name = 'BTT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CARAPiLS', re.name
FROM regular_expressions re
WHERE re.name = 'CARAPiLS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CiELOS', re.name
FROM regular_expressions re
WHERE re.name = 'CiELOS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CiNEMA', re.name
FROM regular_expressions re
WHERE re.name = 'CiNEMA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CMBHD', re.name
FROM regular_expressions re
WHERE re.name = 'CMBHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CoRa', re.name
FROM regular_expressions re
WHERE re.name = 'CoRa';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'COUAC', re.name
FROM regular_expressions re
WHERE re.name = 'COUAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'CRYPT0', re.name
FROM regular_expressions re
WHERE re.name = 'CRYPT0';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'D4KiD', re.name
FROM regular_expressions re
WHERE re.name = 'D4KiD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'DEAL', re.name
FROM regular_expressions re
WHERE re.name = 'DEAL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'DiEBEX', re.name
FROM regular_expressions re
WHERE re.name = 'DiEBEX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'DUPLI', re.name
FROM regular_expressions re
WHERE re.name = 'DUPLI';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'DUSS', re.name
FROM regular_expressions re
WHERE re.name = 'DUSS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ENJOi', re.name
FROM regular_expressions re
WHERE re.name = 'ENJOi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'EUBDS', re.name
FROM regular_expressions re
WHERE re.name = 'EUBDS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FHD', re.name
FROM regular_expressions re
WHERE re.name = 'FHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FiDELiO', re.name
FROM regular_expressions re
WHERE re.name = 'FiDELiO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FiDO', re.name
FROM regular_expressions re
WHERE re.name = 'FiDO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ForceBleue', re.name
FROM regular_expressions re
WHERE re.name = 'ForceBleue';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FREAMON', re.name
FROM regular_expressions re
WHERE re.name = 'FREAMON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FRENCHDEADPOOL2', re.name
FROM regular_expressions re
WHERE re.name = 'FRENCHDEADPOOL2';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FRiES', re.name
FROM regular_expressions re
WHERE re.name = 'FRiES';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FUTiL', re.name
FROM regular_expressions re
WHERE re.name = 'FUTiL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'FWDHD', re.name
FROM regular_expressions re
WHERE re.name = 'FWDHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'GHOULS', re.name
FROM regular_expressions re
WHERE re.name = 'GHOULS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'GiMBAP', re.name
FROM regular_expressions re
WHERE re.name = 'GiMBAP';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'GLiMMER', re.name
FROM regular_expressions re
WHERE re.name = 'GLiMMER';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Goatlove', re.name
FROM regular_expressions re
WHERE re.name = 'Goatlove';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'HERC', re.name
FROM regular_expressions re
WHERE re.name = 'HERC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'HiggsBoson', re.name
FROM regular_expressions re
WHERE re.name = 'HiggsBoson';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'HiRoSHiMa', re.name
FROM regular_expressions re
WHERE re.name = 'HiRoSHiMa';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'HYBRiS', re.name
FROM regular_expressions re
WHERE re.name = 'HYBRiS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'HyDe', re.name
FROM regular_expressions re
WHERE re.name = 'HyDe';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'JMT', re.name
FROM regular_expressions re
WHERE re.name = 'JMT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'JoKeR', re.name
FROM regular_expressions re
WHERE re.name = 'JoKeR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'JUSTICELEAGUE', re.name
FROM regular_expressions re
WHERE re.name = 'JUSTICELEAGUE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'KAZETV', re.name
FROM regular_expressions re
WHERE re.name = 'KAZETV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'L0SERNiGHT', re.name
FROM regular_expressions re
WHERE re.name = 'L0SERNiGHT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LaoZi', re.name
FROM regular_expressions re
WHERE re.name = 'LaoZi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LeON', re.name
FROM regular_expressions re
WHERE re.name = 'LeON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LOFiDEL', re.name
FROM regular_expressions re
WHERE re.name = 'LOFiDEL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LOST', re.name
FROM regular_expressions re
WHERE re.name = 'LOST';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LOWIMDB', re.name
FROM regular_expressions re
WHERE re.name = 'LOWIMDB';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LUCKY', re.name
FROM regular_expressions re
WHERE re.name = 'LUCKY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'LYPSG', re.name
FROM regular_expressions re
WHERE re.name = 'LYPSG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MAGiCAL', re.name
FROM regular_expressions re
WHERE re.name = 'MAGiCAL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MANGACiTY', re.name
FROM regular_expressions re
WHERE re.name = 'MANGACiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MAXAGAZ', re.name
FROM regular_expressions re
WHERE re.name = 'MAXAGAZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MaxiBeNoul', re.name
FROM regular_expressions re
WHERE re.name = 'MaxiBeNoul';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'McNULTY', re.name
FROM regular_expressions re
WHERE re.name = 'McNULTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MELBA', re.name
FROM regular_expressions re
WHERE re.name = 'MELBA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MiND', re.name
FROM regular_expressions re
WHERE re.name = 'MiND';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MORELAND', re.name
FROM regular_expressions re
WHERE re.name = 'MORELAND';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MUNSTER', re.name
FROM regular_expressions re
WHERE re.name = 'MUNSTER';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'MUxHD', re.name
FROM regular_expressions re
WHERE re.name = 'MUxHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'NERDHD', re.name
FROM regular_expressions re
WHERE re.name = 'NERDHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'NERO', re.name
FROM regular_expressions re
WHERE re.name = 'NERO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'NrZ', re.name
FROM regular_expressions re
WHERE re.name = 'NrZ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'NTK', re.name
FROM regular_expressions re
WHERE re.name = 'NTK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'OBSTACLE', re.name
FROM regular_expressions re
WHERE re.name = 'OBSTACLE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'OohLaLa', re.name
FROM regular_expressions re
WHERE re.name = 'OohLaLa';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'OOKAMI', re.name
FROM regular_expressions re
WHERE re.name = 'OOKAMI';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PANZeR', re.name
FROM regular_expressions re
WHERE re.name = 'PANZeR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PATHECROUTE', re.name
FROM regular_expressions re
WHERE re.name = 'PATHECROUTE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Penrose', re.name
FROM regular_expressions re
WHERE re.name = 'Penrose';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PiNKPANTERS', re.name
FROM regular_expressions re
WHERE re.name = 'PiNKPANTERS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PKPTRS', re.name
FROM regular_expressions re
WHERE re.name = 'PKPTRS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PRiDEHD', re.name
FROM regular_expressions re
WHERE re.name = 'PRiDEHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PROPJOE', re.name
FROM regular_expressions re
WHERE re.name = 'PROPJOE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PURE', re.name
FROM regular_expressions re
WHERE re.name = 'PURE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PUREWASTEOFBW', re.name
FROM regular_expressions re
WHERE re.name = 'PUREWASTEOFBW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ROUGH', re.name
FROM regular_expressions re
WHERE re.name = 'ROUGH';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'RUDE', re.name
FROM regular_expressions re
WHERE re.name = 'RUDE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Ryotox', re.name
FROM regular_expressions re
WHERE re.name = 'Ryotox';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SAFETY', re.name
FROM regular_expressions re
WHERE re.name = 'SAFETY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SASHiMi', re.name
FROM regular_expressions re
WHERE re.name = 'SASHiMi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SEiGHT', re.name
FROM regular_expressions re
WHERE re.name = 'SEiGHT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SESKAPiLE', re.name
FROM regular_expressions re
WHERE re.name = 'SESKAPiLE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SHEEEiT', re.name
FROM regular_expressions re
WHERE re.name = 'SHEEEiT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SHiNiGAMi', re.name
FROM regular_expressions re
WHERE re.name = 'SHiNiGAMi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SiGeRiS', re.name
FROM regular_expressions re
WHERE re.name = 'SiGeRiS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SILVIODANTE', re.name
FROM regular_expressions re
WHERE re.name = 'SILVIODANTE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SLEEPINGFOREST', re.name
FROM regular_expressions re
WHERE re.name = 'SLEEPINGFOREST';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SODAPOP', re.name
FROM regular_expressions re
WHERE re.name = 'SODAPOP';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'S4LVE', re.name
FROM regular_expressions re
WHERE re.name = 'S4LVE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SPINE', re.name
FROM regular_expressions re
WHERE re.name = 'SPINE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SPOiLER', re.name
FROM regular_expressions re
WHERE re.name = 'SPOiLER';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'STRINGERBELL', re.name
FROM regular_expressions re
WHERE re.name = 'STRINGERBELL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Sunday26th', re.name
FROM regular_expressions re
WHERE re.name = 'Sunday26th';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SUNRiSE', re.name
FROM regular_expressions re
WHERE re.name = 'SUNRiSE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'tFR', re.name
FROM regular_expressions re
WHERE re.name = 'tFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'THENiGHTMAREiNHD', re.name
FROM regular_expressions re
WHERE re.name = 'THENiGHTMAREiNHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'THiNK', re.name
FROM regular_expressions re
WHERE re.name = 'THiNK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'THREESOME', re.name
FROM regular_expressions re
WHERE re.name = 'THREESOME';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'TiMELiNE', re.name
FROM regular_expressions re
WHERE re.name = 'TiMELiNE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'TSuNaMi', re.name
FROM regular_expressions re
WHERE re.name = 'TSuNaMi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'UKDHD', re.name
FROM regular_expressions re
WHERE re.name = 'UKDHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'UKDTV', re.name
FROM regular_expressions re
WHERE re.name = 'UKDTV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ULSHD', re.name
FROM regular_expressions re
WHERE re.name = 'ULSHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Ulysse', re.name
FROM regular_expressions re
WHERE re.name = 'Ulysse';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'UNSKiLLED', re.name
FROM regular_expressions re
WHERE re.name = 'UNSKiLLED';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'URY', re.name
FROM regular_expressions re
WHERE re.name = 'URY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'VENUE', re.name
FROM regular_expressions re
WHERE re.name = 'VENUE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'VFC', re.name
FROM regular_expressions re
WHERE re.name = 'VFC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'VoMiT', re.name
FROM regular_expressions re
WHERE re.name = 'VoMiT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'Wednesday29th', re.name
FROM regular_expressions re
WHERE re.name = 'Wednesday29th';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ZEST', re.name
FROM regular_expressions re
WHERE re.name = 'ZEST';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'ZiRCON', re.name
FROM regular_expressions re
WHERE re.name = 'ZiRCON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'AKLHD', re.name
FROM regular_expressions re
WHERE re.name = 'AKLHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'N0Z00M', re.name
FROM regular_expressions re
WHERE re.name = 'N0Z00M';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'PHoQUE', re.name
FROM regular_expressions re
WHERE re.name = 'PHoQUE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'SharpHD', re.name
FROM regular_expressions re
WHERE re.name = 'SharpHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR Scene Groups', 'USURY', re.name
FROM regular_expressions re
WHERE re.name = 'USURY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'ARK01', re.name
FROM regular_expressions re
WHERE re.name = 'ARK01';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'BONBON', re.name
FROM regular_expressions re
WHERE re.name = 'BONBON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'FRATERNiTY', re.name
FROM regular_expressions re
WHERE re.name = 'FRATERNiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'FTMVHD', re.name
FROM regular_expressions re
WHERE re.name = 'FTMVHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV HD Bluray Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'FtLi', re.name
FROM regular_expressions re
WHERE re.name = 'FtLi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'Goldenyann', re.name
FROM regular_expressions re
WHERE re.name = 'Goldenyann';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'HDForever', re.name
FROM regular_expressions re
WHERE re.name = 'HDForever';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'ONLY', re.name
FROM regular_expressions re
WHERE re.name = 'ONLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV Remux Tier 01', 'TyrellCorp', re.name
FROM regular_expressions re
WHERE re.name = 'TyrellCorp';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'BONBON', re.name
FROM regular_expressions re
WHERE re.name = 'BONBON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'FCK', re.name
FROM regular_expressions re
WHERE re.name = 'FCK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'FW', re.name
FROM regular_expressions re
WHERE re.name = 'FW';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'FRATERNiTY', re.name
FROM regular_expressions re
WHERE re.name = 'FRATERNiTY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'MTDK', re.name
FROM regular_expressions re
WHERE re.name = 'MTDK';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'NoLo', re.name
FROM regular_expressions re
WHERE re.name = 'NoLo';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'PATOPESTO', re.name
FROM regular_expressions re
WHERE re.name = 'PATOPESTO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'Psaro', re.name
FROM regular_expressions re
WHERE re.name = 'Psaro';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'SUPPLY', re.name
FROM regular_expressions re
WHERE re.name = 'SUPPLY';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'TFA', re.name
FROM regular_expressions re
WHERE re.name = 'TFA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 01', 'TiNA', re.name
FROM regular_expressions re
WHERE re.name = 'TiNA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'COLL3CTiF', re.name
FROM regular_expressions re
WHERE re.name = 'COLL3CTiF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'FiND', re.name
FROM regular_expressions re
WHERE re.name = 'FiND';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'FrIeNdS', re.name
FROM regular_expressions re
WHERE re.name = 'FrIeNdS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'HeavyWeight', re.name
FROM regular_expressions re
WHERE re.name = 'HeavyWeight';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'NoNe', re.name
FROM regular_expressions re
WHERE re.name = 'NoNE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'pERsO', re.name
FROM regular_expressions re
WHERE re.name = 'pERsO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'POTO', re.name
FROM regular_expressions re
WHERE re.name = 'POTO';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'RG', re.name
FROM regular_expressions re
WHERE re.name = 'RG';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'RiPiT', re.name
FROM regular_expressions re
WHERE re.name = 'RiPiT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 02', 'TAT', re.name
FROM regular_expressions re
WHERE re.name = 'TAT';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'ARK01', re.name
FROM regular_expressions re
WHERE re.name = 'ARK01';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'BraD', re.name
FROM regular_expressions re
WHERE re.name = 'BraD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'dRuIdE', re.name
FROM regular_expressions re
WHERE re.name = 'dRuIdE';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'FTMVHD', re.name
FROM regular_expressions re
WHERE re.name = 'FTMVHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'LAZARUS', re.name
FROM regular_expressions re
WHERE re.name = 'LAZARUS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'MYSTERiON', re.name
FROM regular_expressions re
WHERE re.name = 'MYSTERiON';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'Scaph', re.name
FROM regular_expressions re
WHERE re.name = 'Scaph';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'WaCkS', re.name
FROM regular_expressions re
WHERE re.name = 'WaCkS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'FR TV WEB Tier 03', 'WQM', re.name
FROM regular_expressions re
WHERE re.name = 'WQM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing', 'Not French MULTi', re.name
FROM regular_expressions re
WHERE re.name = 'French MULTi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing', 'Not French VF', re.name
FROM regular_expressions re
WHERE re.name = 'French VF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing', 'Not French VOSTFR', re.name
FROM regular_expressions re
WHERE re.name = 'French VOSTFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing', 'Not French VFQ', re.name
FROM regular_expressions re
WHERE re.name = 'French VFQ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Missing', 'Not French Original Marker', re.name
FROM regular_expressions re
WHERE re.name = 'French Original Marker';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi', 'French MULTi', re.name
FROM regular_expressions re
WHERE re.name = 'French MULTi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi', 'Not French VFQ', re.name
FROM regular_expressions re
WHERE re.name = 'French VFQ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French MULTi', 'Not French VOSTFR', re.name
FROM regular_expressions re
WHERE re.name = 'French VOSTFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VF', 'French VF', re.name
FROM regular_expressions re
WHERE re.name = 'French VF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VF', 'Not French MULTi', re.name
FROM regular_expressions re
WHERE re.name = 'French MULTi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VF', 'Not French VOSTFR', re.name
FROM regular_expressions re
WHERE re.name = 'French VOSTFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VF', 'Not French VFQ', re.name
FROM regular_expressions re
WHERE re.name = 'French VFQ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VF', 'Not French Original Marker', re.name
FROM regular_expressions re
WHERE re.name = 'French Original Marker';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VFQ', 'French VFQ', re.name
FROM regular_expressions re
WHERE re.name = 'French VFQ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VFQ', 'Not French Original Marker', re.name
FROM regular_expressions re
WHERE re.name = 'French Original Marker';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'French VOSTFR', re.name
FROM regular_expressions re
WHERE re.name = 'French VOSTFR';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'Not French MULTi', re.name
FROM regular_expressions re
WHERE re.name = 'French MULTi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'Not French VF', re.name
FROM regular_expressions re
WHERE re.name = 'French VF';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'Not French VFQ', re.name
FROM regular_expressions re
WHERE re.name = 'French VFQ';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French VOSTFR', 'Not French Original Marker', re.name
FROM regular_expressions re
WHERE re.name = 'French Original Marker';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'French Original Marker', 'French Original Marker', re.name
FROM regular_expressions re
WHERE re.name = 'French Original Marker';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Full Disc', 'Full Disc', re.name
FROM regular_expressions re
WHERE re.name = 'Full Disc';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Full Disc', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Full Disc', 'Not x264', re.name
FROM regular_expressions re
WHERE re.name = 'x264';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Full Disc', 'Not x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'German DL', 'German DL', re.name
FROM regular_expressions re
WHERE re.name = 'German DL';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'h265', 'h265', re.name
FROM regular_expressions re
WHERE re.name = 'h265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'h265 (Efficient)', 'h265', re.name
FROM regular_expressions re
WHERE re.name = 'h265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HBO Max Enhancement', 'HMAX', re.name
FROM regular_expressions re
WHERE re.name = 'HBO Max';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HBO Max Enhancement', 'MAX', re.name
FROM regular_expressions re
WHERE re.name = 'Max';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HMAX', 'HMAX Regex', re.name
FROM regular_expressions re
WHERE re.name = 'HBO Max';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HTSR', 'HTSR Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Hotstar';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'HULU', 'HULU Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Hulu';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'iP', 'iP Regex', re.name
FROM regular_expressions re
WHERE re.name = 'BBC iPlayer';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'iT', 'iT Regex', re.name
FROM regular_expressions re
WHERE re.name = 'iTunes';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'iT', 'iT Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'iTunes Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'iTunes Enhancement', 'iT', re.name
FROM regular_expressions re
WHERE re.name = 'iTunes';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossless Audio', 'DTS-HD MA', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-HD MA';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossless Audio', 'DTS-X', re.name
FROM regular_expressions re
WHERE re.name = 'DTS-X';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossless Audio', 'PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Lossless Audio', 'TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'MA', 'MA Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Movies Anywhere';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'MAX', 'MAX Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Max';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'MAX', 'MAX Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Max Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Movies Anywhere Enhancement', 'MA', re.name
FROM regular_expressions re
WHERE re.name = 'Movies Anywhere';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'MUBI', 'MUBI Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Mubi';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'NF', 'NF Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Netflix';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'NOW', 'NOW Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Now';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'NOW', 'NOW Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Now Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Opus', 'Opus', re.name
FROM regular_expressions re
WHERE re.name = 'Opus';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Opus', 'Not OPUS Release Group', re.name
FROM regular_expressions re
WHERE re.name = 'Opus (Negation)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'PCM', re.name
FROM regular_expressions re
WHERE re.name = 'PCM';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not AAC', re.name
FROM regular_expressions re
WHERE re.name = 'AAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCM', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PCOK', 'PCOK Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Peacock TV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PLAY', 'PLAY Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Google TV';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PLAY', 'PLAY Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Google TV Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'PMTP', 'PMTP Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Paramount+';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Repack1', 'Repack1', re.name
FROM regular_expressions re
WHERE re.name = 'Repack1';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Repack2', 'Repack2', re.name
FROM regular_expressions re
WHERE re.name = 'Repack2';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Repack3', 'Repack3', re.name
FROM regular_expressions re
WHERE re.name = 'Repack3';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'ROKU', 'ROKU Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Roku';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'SHO', 'SHO Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Showtime';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'SHO', 'SHO Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Showtime Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Sing Along', 'Sing Along', re.name
FROM regular_expressions re
WHERE re.name = 'Sing Along';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Special Edition', re.name
FROM regular_expressions re
WHERE re.name = 'Special Edition';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Not IMAX', re.name
FROM regular_expressions re
WHERE re.name = 'IMAX';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Not Open Matte', re.name
FROM regular_expressions re
WHERE re.name = 'Open Matte';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Not Theatrical Edition', re.name
FROM regular_expressions re
WHERE re.name = 'Theatrical Edition';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Not Extended Clip', re.name
FROM regular_expressions re
WHERE re.name = 'Extended Clip';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Special Edition', 'Not Sing Along', re.name
FROM regular_expressions re
WHERE re.name = 'Sing Along';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'STAN', 'STAN Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Stan';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'STAN', 'STAN Rename Regex', re.name
FROM regular_expressions re
WHERE re.name = 'Stan Rename';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD', 'TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD', 'Not Dolby Digital', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD', 'Not Dolby Digital +', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Atmos', re.name
FROM regular_expressions re
WHERE re.name = 'Atmos (Missing)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Not DD', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Not DD+', re.name
FROM regular_expressions re
WHERE re.name = 'Dolby Digital +';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Not DTS', re.name
FROM regular_expressions re
WHERE re.name = 'DTS';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Not FLAC', re.name
FROM regular_expressions re
WHERE re.name = 'FLAC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'TrueHD (Missing)', 'Not TrueHD', re.name
FROM regular_expressions re
WHERE re.name = 'TrueHD';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'UHD Bluray (Efficient)', 'UHD Bluray', re.name
FROM regular_expressions re
WHERE re.name = 'UHD Bluray (Efficient)';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'UHD Bluray (Efficient)', 'HDR', re.name
FROM regular_expressions re
WHERE re.name = 'Basic HDR Formats';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'VP9', 'VP9', re.name
FROM regular_expressions re
WHERE re.name = 'VP9';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'VVC', 'VVC', re.name
FROM regular_expressions re
WHERE re.name = 'VVC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x264 (2160p)', 'x264', re.name
FROM regular_expressions re
WHERE re.name = 'x264';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265', 'x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Bluray)', 'x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Efficient)', 'x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Missing)', 'Not Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Missing)', 'Not x264', re.name
FROM regular_expressions re
WHERE re.name = 'x264';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Missing)', 'Not x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Remux)', 'x265', re.name
FROM regular_expressions re
WHERE re.name = 'HEVC';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (Remux)', 'Remux', re.name
FROM regular_expressions re
WHERE re.name = 'Remux';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'x265 (WEB)', 'x265', re.name
FROM regular_expressions re
WHERE re.name = 'x265';
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name)
SELECT 'Xvid', 'Xvid', re.name
FROM regular_expressions re
WHERE re.name = 'Xvid';
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('1080p Bluray', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('1080p HDTV', 'HDTV', 'television');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('1080p WEB-DL', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('1080p WEB-DL (h264)', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('1080p WEBRip', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('2160p WEB-DL', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('480p Bluray', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('480p WEB-DL', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('576p Bluray', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('720p Bluray', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('720p HDTV', 'HDTV', 'television');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('720p WEB-DL', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('720p WEBRip', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('AMZN', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('AMZN', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('ATVP', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('ATVP', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('BCORE', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('BCORE', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CR', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CR', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CRAV', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CRAV', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CRIT', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('CRIT', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('DRPO', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('DRPO', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('DSNP', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('DSNP', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('DVD Remux', 'DVD', 'dvd');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie HD Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie HD Bluray Tier 02', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie UHD Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie UHD Bluray Tier 02', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 01', 'Not Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 01', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 01', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 02', 'Not Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 02', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR Movie WEB Tier 02', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV HD Bluray Tier 01', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 01', 'Not Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 01', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 01', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 02', 'Not Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 02', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 02', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 03', 'Not Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 03', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('FR TV WEB Tier 03', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('Full Disc', 'Not WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('Full Disc', 'Not WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('Full Disc', 'Not HDTV', 'television');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HMAX', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HMAX', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HTSR', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HTSR', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HULU', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('HULU', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('iP', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('iP', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('iT', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('iT', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MA', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MA', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MAX', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MAX', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MUBI', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('MUBI', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('NF', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('NF', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('NOW', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('NOW', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PCOK', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PCOK', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PLAY', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PLAY', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PMTP', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('PMTP', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('ROKU', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('ROKU', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('SHO', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('SHO', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('STAN', 'WEB-DL', 'web_dl');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('STAN', 'WEBRip', 'webrip');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('x265 (Bluray)', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('x265 (Missing)', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('x265 (WEB)', 'Bluray', 'bluray');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('Xvid', 'Not DVD', 'dvd');
INSERT INTO condition_sources (custom_format_name, condition_name, source)
VALUES ('Xvid', 'Not HDTV', 'television');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p Bluray', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p HDTV', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p Remux', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p WEB-DL', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p WEB-DL (h264)', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('1080p WEBRip', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p Remux', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('2160p WEB-DL', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('480p Bluray', '480p', '480p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('480p WEB-DL', '480p', '480p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('576p Bluray', '576p', '576p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('720p Bluray', '720p', '720p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('720p HDTV', '720p', '720p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('720p WEB-DL', '720p', '720p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('720p WEBRip', '720p', '720p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('Amazon Enhancement', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('Disney+ Enhancement', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('FR Movie HD Bluray Tier 01', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('FR Movie HD Bluray Tier 02', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('FR Movie UHD Bluray Tier 01', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('FR Movie UHD Bluray Tier 02', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('FR TV HD Bluray Tier 01', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('h265', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('h265 (Efficient)', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('h265 (Efficient)', 'Not 1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('HBO Max Enhancement', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('iTunes Enhancement', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('Lossless Audio', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('Movies Anywhere Enhancement', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('TrueHD (Missing)', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('UHD Bluray (Efficient)', '1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x264 (2160p)', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (Bluray)', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (Efficient)', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (Efficient)', 'Not 1080p', '1080p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (Missing)', '2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (Remux)', 'Not 2160p', '2160p');
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution)
VALUES ('x265 (WEB)', 'Not 2160p', '2160p');
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier)
VALUES ('Full Disc (Quality Match)', 'BRDISK', 'brdisk');
INSERT INTO condition_release_types (custom_format_name, condition_name, release_type)
VALUES ('Season Pack', 'Season Pack', 'season_pack');


-- Dictionarry V2 technical custom formats retained for FR profiles
INSERT INTO custom_formats (name, description) VALUES ('Extended Edition', 'Matches extended editions separately from other special editions.');
INSERT INTO custom_formats (name, description) VALUES ('Audio Description', 'Sign Language Variations');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Extended Edition' AND t.name = 'Edition';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Audio Description' AND t.name = 'Language';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Extras' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Extras' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Upscale' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Upscale' AND t.name = 'Enhancement';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Remux' AND t.name = 'Storage';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'B&W' AND t.name = 'Banned';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'B&W' AND t.name = 'Colour Grade';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'B&W' AND t.name = 'Enhancement';

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extras', 'Movie Extras', 'release_title', 'radarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extras', 'Movie Extras', 'Movie Extras');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extras', 'TV Extras', 'release_title', 'sonarr', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extras', 'TV Extras', 'TV Extras');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Upscale', 'Upscale', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscale', 'Upscale', 'Upscale');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Upscale', 'AI Movie Upscale', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscale', 'AI Movie Upscale', 'AI Movie Upscale');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Upscale', 'AI TV Upscale', 'release_title', 'sonarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Upscale', 'AI TV Upscale', 'AI TV Upscale');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Remux', 'Remux', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Remux', 'Remux', 'Remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Remux', 'Not DVD', 'source', 'all', 1, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux', 'Not DVD', 'dvd');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Remux', 'Remux Quality Match', 'quality_modifier', 'radarr', 0, 0);
INSERT INTO condition_quality_modifiers (custom_format_name, condition_name, quality_modifier) VALUES ('Remux', 'Remux Quality Match', 'remux');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Remux', 'Remux Source', 'source', 'sonarr', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('Remux', 'Remux Source', 'bluray_raw');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('DVD', 'DVD', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('DVD', 'DVD', 'dvd');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('DVD', 'Not Remux', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('DVD', 'Not Remux', 'Remux');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SDTV', 'SDTV', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SDTV', 'SDTV', 'television');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SDTV', 'Not 720p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDTV', 'Not 720p', '720p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SDTV', 'Not 1080p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDTV', 'Not 1080p', '1080p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SDTV', 'Not 2160p', 'resolution', 'all', 1, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('SDTV', 'Not 2160p', '2160p');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('UHD Bluray', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('UHD Bluray', '1080p', '1080p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('UHD Bluray', 'UHD Bluray', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray', 'UHD Bluray', 'UHD Bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('UHD Bluray', 'HDR', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray', 'HDR', 'Basic HDR Formats');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('UHD Bluray', 'x265', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('UHD Bluray', 'x265', 'x265');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR', 'HDR', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR', 'HDR', 'HDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR', 'Not HDR10+', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR', 'Not HDR10+', 'HDR10+');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR10+', 'HDR10+', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR10+', 'HDR10+', 'HDR10+');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('HDR (Missing)', '1080p', '1080p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('HDR (Missing)', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', 'Dolby Vision', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR (Missing)', 'Dolby Vision', 'Dolby Vision');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', 'x265', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR (Missing)', 'x265', 'x265');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', 'Not HDR', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR (Missing)', 'Not HDR', 'HDR');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('HDR (Missing)', 'Not HDR10+', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('HDR (Missing)', 'Not HDR10+', 'HDR10+');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Black & White', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Black & White', 'Black & White');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Monochrome', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Monochrome', 'Monochrome');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Noir', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Noir', 'Noir');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Shush Cut', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Shush Cut', 'Shush Cut');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Color', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Color', 'Color');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Grayscale', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Grayscale', 'Grayscale');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('B&W', 'Darkness & Light', 'release_title', 'radarr', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('B&W', 'Darkness & Light', 'Darkness & Light');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Extended Edition', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Extended Edition', 'Extended Edition');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Not Extended Clip', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Not Extended Clip', 'Extended Clip');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Not IMAX', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Not IMAX', 'IMAX');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Not Open Matte', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Not Open Matte', 'Open Matte');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Not Sing Along', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Not Sing Along', 'Sing Along');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Extended Edition', 'Not Theatrical Edition', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Extended Edition', 'Not Theatrical Edition', 'Theatrical Edition');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Audio Description', 'Audio Description', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Audio Description', 'Audio Description', 'Audio Description');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Audio Description', 'American Sign Language', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Audio Description', 'American Sign Language', 'American Sign Language');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Audio Description', 'Black American Sign Language', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Audio Description', 'Black American Sign Language', 'Black American Sign Language');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Audio Description', 'British Sign Language', 'release_title', 'all', 0, 0);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Audio Description', 'British Sign Language', 'British Sign Language');

INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SKST', 'SKST Regex', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('SKST', 'SKST Regex', 'SkyShowTime');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SKST', 'WEB-DL', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SKST', 'WEB-DL', 'web_dl');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('SKST', 'WEBRip', 'source', 'all', 0, 0);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('SKST', 'WEBRip', 'webrip');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'SKST' AND t.name = 'Streaming Service';
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'SKST' AND t.name = 'WEB-DL';

-- Dictionarry V2 language custom formats without release-group tier logic
INSERT INTO custom_formats (name, description) VALUES ('Nordic', 'Matches releases explicitly marked Nordic.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Nordic', 'Nordic', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Nordic', 'Nordic', 'Nordic');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Nordic' AND t.name = 'Language';

INSERT INTO custom_formats (name, description) VALUES ('Dual Audio', 'Matches releases explicitly tagged as Dual Audio.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('Dual Audio', 'Dual Audio', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('Dual Audio', 'Dual Audio', 'Dual Audio');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'Dual Audio' AND t.name = 'Language';

-- Native French content is already in the desired language and does not need a dubbing marker.
-- MULTi is excluded here to keep a native MULTi release from receiving two language bonuses.
INSERT INTO custom_formats (name, description) VALUES ('French Original', 'Priorise les contenus dont la langue originale est le francais, sans exiger de marqueur MULTi ou VF.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French Original', 'Original', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('French Original', 'Original', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French Original', 'French', 'language', 'all', 0, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('French Original', 'French', 'French', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French Original', 'Not French MULTi', 'release_title', 'all', 1, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('French Original', 'Not French MULTi', 'French MULTi');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = 'French Original' AND t.name IN ('French', 'Language');

-- An original French or Quebec release must not be downgraded as VF/VFQ/VOSTFR.
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French VF', 'Not Original', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('French VF', 'Not Original', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French VFQ', 'Not Original', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('French VFQ', 'Not Original', 'Original', 0);
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('French VOSTFR', 'Not Original', 'language', 'all', 1, 1);
INSERT INTO condition_languages (custom_format_name, condition_name, language_name, except_language) VALUES ('French VOSTFR', 'Not Original', 'Original', 0);

-- Dictionarry V2 source formats required by the revised technical score ladder
INSERT INTO custom_formats (name, description) VALUES ('576p WEB-DL', 'Matches 576p WEB-DLs.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('576p WEB-DL', '576p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('576p WEB-DL', '576p', '576p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('576p WEB-DL', 'WEB-DL', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('576p WEB-DL', 'WEB-DL', 'web_dl');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = '576p WEB-DL' AND t.name = 'Source';

INSERT INTO custom_formats (name, description) VALUES ('1080p Bluray (Efficient)', 'Matches 1080p x264 Blurays as an Efficient movie fallback.');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('1080p Bluray (Efficient)', '1080p', 'resolution', 'all', 0, 1);
INSERT INTO condition_resolutions (custom_format_name, condition_name, resolution) VALUES ('1080p Bluray (Efficient)', '1080p', '1080p');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('1080p Bluray (Efficient)', 'Bluray', 'source', 'all', 0, 1);
INSERT INTO condition_sources (custom_format_name, condition_name, source) VALUES ('1080p Bluray (Efficient)', 'Bluray', 'bluray');
INSERT INTO custom_format_conditions (custom_format_name, name, type, arr_type, negate, required) VALUES ('1080p Bluray (Efficient)', 'x264', 'release_title', 'all', 0, 1);
INSERT INTO condition_patterns (custom_format_name, condition_name, regular_expression_name) VALUES ('1080p Bluray (Efficient)', 'x264', 'AVC');
INSERT INTO custom_format_tags (custom_format_name, tag_name) SELECT cf.name, t.name FROM custom_formats cf, tags t WHERE cf.name = '1080p Bluray (Efficient)' AND t.name = 'Source';
