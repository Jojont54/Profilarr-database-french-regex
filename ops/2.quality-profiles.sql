-- ============================================================================
-- PCD 2.0 French Database - French Quality Profiles
-- FR-only publication built from Dictionarry technical foundations
-- ============================================================================

INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Balanced FR', '1080p Balanced FR cible des **WEB-DL 1080p** fiables et stables, en utilisant
la source de streaming et les formats audio pour estimer le niveau de transparence.

- Taille moyenne film ~ 4 a 8 Go par film
- Classement qualite film ~ 6/10
- Taille moyenne serie ~ 2 a 4 Go par episode
- Classement qualite serie ~ 7/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Compact FR', '1080p Compact FR cible des encodes BluRay et WEB x265 de qualite faible a moyenne,
avec des fichiers plus legers.

- Taille moyenne film ~ 3 a 6 Go par film
- Classement qualite film ~ 4/10
- Taille moyenne serie ~ 1 a 2 Go par episode
- Classement qualite serie ~ 4/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Efficient FR', '1080p Efficient FR cible des encodes BluRay et WEB x265 de bonne qualite, avec
un bon compromis entre taille et rendu.

- Taille moyenne film ~ 6 a 12 Go par film
- Classement qualite film ~ 7/10
- Taille moyenne serie ~ 2 a 3 Go par episode
- Classement qualite serie ~ 6/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Quality FR', '1080p Quality FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x264 1080p **transparents**.

- Taille moyenne film ~ 10 a 15 Go par film
- Classement qualite film ~ 8/10
- Taille moyenne serie ~ 4 a 8 Go par episode
- Classement qualite serie ~ 8/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Quality HDR FR', '1080p Quality HDR FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x265 HDR 1080p **transparents**.

- Taille moyenne film ~ 10 a 20 Go par film
- Classement qualite film ~ 9/10
- Taille moyenne serie ~ 4 a 10 Go par episode
- Classement qualite serie ~ 9/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('1080p Remux FR', '1080p Remux FR utilise les **formats audio** pour prioriser les BluRay HD
lossless de haute qualite, avec un repli vers des encodes BluRay transparents.

- Taille moyenne film ~ 20 a 30 Go par film
- Classement qualite film ~ 10/10
- Taille moyenne serie ~ 6 a 12 Go par episode
- Classement qualite serie ~ 10/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('2160p Balanced FR', '2160p Balanced FR cible des **WEB-DL 2160p avec audio lossy** fiables et stables.

- Taille moyenne film ~ 15 a 30 Go par film
- Classement qualite film ~ 8/10
- Taille moyenne serie ~ 5 a 15 Go par episode
- Classement qualite serie ~ 8/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('2160p Efficient FR', '2160p Efficient FR cible des **WEB-DL 2160p avec audio lossy** fiables et stables,
avec un repli specialise vers 1080p Efficient.

- Taille moyenne film ~ 15 a 30 Go par film
- Classement qualite film ~ 6/10
- Taille moyenne serie ~ 4 a 12 Go par episode
- Classement qualite serie ~ 6/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('2160p Quality FR', '2160p Quality FR utilise l''indice [**Encode Efficiency Index**](https://dictionarry.dev/wiki/eei)
avec un ratio cible de 60 % pour prioriser des encodes x265 4K **transparents**.

- Taille moyenne film ~ 30 a 50 Go par film
- Classement qualite film ~ 9/10
- Taille moyenne serie ~ 10 a 20 Go par episode
- Classement qualite serie ~ 9/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('2160p Remux FR', '2160p Remux FR utilise les **formats video et audio** pour prioriser les copies
lossless de haute qualite issues de BluRay UHD.

- Taille moyenne film ~ 40 a 60 Go par film
- Classement qualite film ~ 10/10
- Taille moyenne serie ~ 15 a 30 Go par episode
- Classement qualite serie ~ 10/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('720p Quality FR', '720p Quality FR utilise le [**Golden Popcorn Performance Index**](https://dictionarry.dev/wiki/gppi)
pour cibler des encodes x264 720p **transparents**.

- Taille moyenne film ~ 4 a 8 Go par film
- Classement qualite film ~ 5/10
- Taille moyenne serie ~ 2 a 4 Go par episode
- Classement qualite serie ~ 5/10', 1, 20000, 1000000, 1);
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Anime 1080p FR', 'Anime 1080p FR cible les releases anime taguees en francais tout en conservant
la logique de tiers anime de Dictionarry.

- Priorise MULTi, puis VOSTFR, puis VF
- Rejette VFQ, les groupes FR de faible qualite et les releases sans marqueur francais explicite
- Utilise les tiers anime FR de la base', 1, 0, 10000, 1);
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Balanced'
FROM quality_profiles qp
WHERE qp.name = '1080p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Compact'
FROM quality_profiles qp
WHERE qp.name = '1080p Compact FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Compact FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Compact FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Efficient'
FROM quality_profiles qp
WHERE qp.name = '1080p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Quality HDR'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality HDR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality HDR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Quality HDR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Remux'
FROM quality_profiles qp
WHERE qp.name = '1080p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '1080p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Quality HDR'
FROM quality_profiles qp
WHERE qp.name = '2160p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '2160p Balanced'
FROM quality_profiles qp
WHERE qp.name = '2160p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Balanced FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Efficient'
FROM quality_profiles qp
WHERE qp.name = '2160p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '2160p Efficient'
FROM quality_profiles qp
WHERE qp.name = '2160p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Efficient FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Quality HDR'
FROM quality_profiles qp
WHERE qp.name = '2160p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '2160p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '1080p Remux'
FROM quality_profiles qp
WHERE qp.name = '2160p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '2160p Remux'
FROM quality_profiles qp
WHERE qp.name = '2160p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '2160p Remux FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '480p Quality'
FROM quality_profiles qp
WHERE qp.name = '720p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, '720p Quality'
FROM quality_profiles qp
WHERE qp.name = '720p Quality FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'Bluray/REMUX 1080p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 1080p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 480p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 720p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p FR';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '1080p Balanced', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '1080p Balanced', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Balanced FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '1080p Compact', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '1080p Compact', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '1080p Compact', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Compact FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '1080p Efficient', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '1080p Efficient', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '1080p Efficient', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Efficient FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '1080p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '1080p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '1080p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '1080p Quality HDR', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '1080p Quality HDR', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '1080p Quality HDR', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Quality HDR FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '1080p Remux', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '1080p Remux', q.name, 1
FROM qualities q
WHERE q.name = 'Remux-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '1080p Remux', q.name, 2
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '1080p Remux', q.name, 3
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '1080p Remux FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '1080p Quality HDR', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '1080p Quality HDR', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '1080p Quality HDR', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '2160p Balanced', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '2160p Balanced', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Balanced FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '1080p Efficient', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '1080p Efficient', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '1080p Efficient', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '2160p Efficient', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '2160p Efficient', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '2160p Efficient', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Efficient FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '1080p Quality HDR', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '1080p Quality HDR', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '1080p Quality HDR', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '2160p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '2160p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Quality FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '1080p Remux', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '1080p Remux', q.name, 1
FROM qualities q
WHERE q.name = 'Remux-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '1080p Remux', q.name, 2
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '1080p Remux', q.name, 3
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '2160p Remux', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '2160p Remux', q.name, 1
FROM qualities q
WHERE q.name = 'Remux-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '2160p Remux', q.name, 2
FROM qualities q
WHERE q.name = 'WEBDL-2160p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '2160p Remux FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '480p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '480p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'Bluray-576p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '480p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'DVD';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '480p Quality', q.name, 3
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '720p Quality', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '720p Quality', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT '720p Quality FR', '720p Quality', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'Bluray/REMUX 1080p', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'Bluray/REMUX 1080p', q.name, 1
FROM qualities q
WHERE q.name = 'Remux-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 1080p', q.name, 0
FROM qualities q
WHERE q.name = 'HDTV-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 1080p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 1080p', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 480p', q.name, 0
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 480p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBRip-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 720p', q.name, 0
FROM qualities q
WHERE q.name = 'HDTV-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 720p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p FR', 'WEB 720p', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = 'Balanced Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = 'h264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Balanced FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = 'Compact Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Compact FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = 'Efficient Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Efficient FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = 'Quality Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = 'h264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'HDR';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'Quality Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Quality HDR FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'Lossless Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'Remux Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'h264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '1080p Remux FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = '2160p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'Balanced Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'HDR';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Balanced FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = '2160p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = 'Efficient Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Efficient FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = '2160p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'HDR';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'Lossless Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'Quality Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Quality FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = '2160p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'HDR';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'Lossless Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'Remux Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'h265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '2160p Remux FR' AND t.name = 'x265';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = '720p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = 'Lossy Audio';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = 'Quality Focused';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = 'h264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = '720p Quality FR' AND t.name = 'x264';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p FR' AND t.name = 'Anime';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p FR' AND t.name = 'Radarr';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p FR' AND t.name = 'Sonarr';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Balanced FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Compact FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Efficient FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Quality FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Quality HDR FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '1080p Remux FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '2160p Balanced FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '2160p Efficient FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '2160p Quality FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '2160p Remux FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = '720p Quality FR' AND l.name = 'Any';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = 'Anime 1080p FR' AND l.name = 'Any';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'x265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 281000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 280000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 281000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 280000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 279000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 98000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 620000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '1080p WEB-DL (h264)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 580000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 460000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 460000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 340000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '1080p HDTV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '720p HDTV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 160000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 40000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'SDTV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'h265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Lossless Audio';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'UHD Bluray (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'x265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 703000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 702000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 643000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 642000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 641000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 665000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 684000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 683000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 682000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 681000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 280000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '1080p WEB-DL (h264)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'h265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Lossless Audio';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'x265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 323000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 322000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 301000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 324000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 305000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 304000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'x265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 98000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 420000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HDR (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -400000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'x265 (Bluray)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'x265 (WEB)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 98000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 440000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '1080p Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 420000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DTS-X';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DTS-HD MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'TrueHD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HDR (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'PCM';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Atmos (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -400000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'x265 (Bluray)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'x265 (Remux)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'x265 (WEB)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie Remux Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie Remux Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR TV Remux Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 98000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 440000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '2160p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 420000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DTS-X';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DTS-HD MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'TrueHD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'TrueHD (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Amazon Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HDR (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'PCM';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Atmos (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -400000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'x265 (Bluray)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'x264 (2160p)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'x265 (WEB)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 442000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 441000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 6000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Disney+ Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Movies Anywhere Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'iTunes Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 324000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 305000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 304000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'HBO Max Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 380000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '2160p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 280000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '1080p WEB-DL (h264)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Amazon Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'h265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Lossless Audio';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'x264 (2160p)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'x265 (Efficient)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 382000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 381000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 323000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 322000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 301000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 6000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Disney+ Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Movies Anywhere Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'iTunes Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 324000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 305000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 304000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'HBO Max Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 440000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '2160p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 420000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DTS-X';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DTS-HD MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'TrueHD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'TrueHD (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Amazon Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HDR (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'PCM';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Atmos (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -400000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'x265 (Bluray)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'x264 (2160p)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'x265 (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'x265 (WEB)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 442000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 441000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 6000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Disney+ Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Movies Anywhere Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'iTunes Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 324000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 305000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 304000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'HBO Max Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '2160p Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 460000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '2160p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 440000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '1080p Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 420000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'UHD Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 860000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '1080p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 880000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '1080p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 850000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '1080p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DTS-X';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DTS-HD MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'TrueHD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'TrueHD (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Amazon Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HDR (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'PCM';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Atmos (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -400000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'x265 (Bluray)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Dolby Vision (Without Fallback)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'x264 (2160p)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'x265 (Missing)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'x265 (Remux)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'x265 (WEB)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 462000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie UHD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 461000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie UHD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 462000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie Remux Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 461000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie Remux Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 6000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 4000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Disney+ Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Movies Anywhere Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'iTunes Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 464000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR TV Remux Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 324000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 305000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 304000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 303000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 302000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'HBO Max Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 240000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '720p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '720p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 180000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '720p WEBRip';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 120000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '576p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '480p Bluray';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '480p WEB-DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DVD';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 20000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DVD Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'ATVP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'HMAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 2000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'MAX';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'iT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 800
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FLAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DTS-HD HRA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 700
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Opus';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DTS-ES';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Dolby Atmos';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 200
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 8
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Repack3';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Repack2';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Repack1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'CRAV';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'CRIT';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'DRPO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'HTSR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'HULU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'iP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'MUBI';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'NOW';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'PCOK';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'PLAY';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'PMTP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'ROKU';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'SHO';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'STAN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Audio Description';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'BCORE';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Dolby Vision';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Full Disc';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'h265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'HDR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'HDR10+';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Remux';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'x265';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 59000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 59000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 58000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 3000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'MA';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Better Theatricals';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Special Edition';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = '3D';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'B&W';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Extras';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Full Disc (Quality Match)';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Sing Along';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Upscale';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 98000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 103000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Anime Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 102000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Anime Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Anime Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Anime FanSub';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 80000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 60000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 50
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'CR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 5
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 50
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 25
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 25
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Balanced';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Compact FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Compact';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Compact FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 2, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = '1080p Compact FR' AND q.name = 'HDTV-1080p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 3, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = '1080p Compact FR' AND q.name = 'HDTV-720p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 4, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Compact FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 5, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = '1080p Compact FR' AND q.name = 'SDTV';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Efficient';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality HDR FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Quality HDR';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality HDR FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Quality HDR FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Remux';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '1080p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '2160p Balanced';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Quality HDR';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Balanced FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '2160p Efficient';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Efficient';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Efficient FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '2160p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Quality HDR';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '2160p Remux';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '1080p Remux';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 2, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '2160p Remux FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '720p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '720p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = '720p Quality FR' AND qg.quality_profile_name = qp.name AND qg.name = '480p Quality';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p FR' AND qg.quality_profile_name = qp.name AND qg.name = 'Bluray/REMUX 1080p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 1080p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 2, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p FR' AND q.name = 'Bluray-720p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 720p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 4, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p FR' AND q.name = 'Bluray-480p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 5, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 480p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 6, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p FR' AND q.name = 'DVD';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 7, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p FR' AND q.name = 'SDTV';
INSERT INTO quality_profiles (name, description, upgrades_allowed, minimum_custom_format_score, upgrade_until_score, upgrade_score_increment)
VALUES ('Anime 1080p VOSTFR FR', 'Anime 1080p VOSTFR FR cible uniquement les releases anime en version originale sous-titree francaise tout en conservant
la logique de tiers anime de Dictionarry.

- Accepte VOSTFR uniquement
- Rejette MULTi, VF, VFQ, les groupes FR de faible qualite et les releases sans marqueur francais explicite
- Utilise les tiers anime FR de la base', 1, 0, 10000, 1);
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'Bluray/REMUX 1080p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p VOSTFR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 1080p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p VOSTFR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 480p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p VOSTFR FR';
INSERT INTO quality_groups (quality_profile_name, name)
SELECT qp.name, 'WEB 720p'
FROM quality_profiles qp
WHERE qp.name = 'Anime 1080p VOSTFR FR';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'Bluray/REMUX 1080p', q.name, 0
FROM qualities q
WHERE q.name = 'Bluray-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'Bluray/REMUX 1080p', q.name, 1
FROM qualities q
WHERE q.name = 'Remux-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 1080p', q.name, 0
FROM qualities q
WHERE q.name = 'HDTV-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 1080p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 1080p', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-1080p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 480p', q.name, 0
FROM qualities q
WHERE q.name = 'WEBDL-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 480p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBRip-480p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 720p', q.name, 0
FROM qualities q
WHERE q.name = 'HDTV-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 720p', q.name, 1
FROM qualities q
WHERE q.name = 'WEBDL-720p';
INSERT INTO quality_group_members (quality_profile_name, quality_group_name, quality_name, position)
SELECT 'Anime 1080p VOSTFR FR', 'WEB 720p', q.name, 2
FROM qualities q
WHERE q.name = 'WEBRip-720p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND t.name = '1080p';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND t.name = 'Anime';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND t.name = 'French';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND t.name = 'Radarr';
INSERT INTO quality_profile_tags (quality_profile_name, tag_name)
SELECT qp.name, t.name
FROM quality_profiles qp, tags t
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND t.name = 'Sonarr';
INSERT INTO quality_profile_languages (quality_profile_name, language_name, type)
SELECT qp.name, l.name, 'simple'
FROM quality_profiles qp, languages l
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND l.name = 'Any';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 103000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Anime Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 102000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Anime Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Anime Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Anime FanSub';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French MULTi';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French VOSTFR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French VF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 99000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Scene Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 101000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Global Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 100000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Global Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 50
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR HDLight Tier';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 7
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'CR';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 6
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'DSNP';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 5
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'NF';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 4
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'AMZN';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 50
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'Dolby Digital +';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 25
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'Dolby Digital';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 25
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'DTS';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'AAC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French VFQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR LQ';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French Missing';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'AV1';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'German DL';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'VP9';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'VVC';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'Xvid';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Movie HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1300
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Movie HD Bluray Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Movie WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR Movie WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR TV HD Bluray Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 600
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR TV WEB Tier 01';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 500
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR TV WEB Tier 02';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 400
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'FR TV WEB Tier 03';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 10
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'Season Pack';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 0, 1
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND qg.quality_profile_name = qp.name AND qg.name = 'Bluray/REMUX 1080p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 1, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 1080p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 2, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND q.name = 'Bluray-720p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 3, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 720p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 4, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND q.name = 'Bluray-480p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_group_name, position, upgrade_until)
SELECT qp.name, qg.name, 5, 0
FROM quality_profiles qp, quality_groups qg
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND qg.quality_profile_name = qp.name AND qg.name = 'WEB 480p';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 6, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND q.name = 'DVD';
INSERT INTO quality_profile_qualities (quality_profile_name, quality_name, position, upgrade_until)
SELECT qp.name, q.name, 7, 0
FROM quality_profiles qp, qualities q
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND q.name = 'SDTV';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Extras';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Balanced FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Compact FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Efficient FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Quality HDR FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '1080p Remux FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Balanced FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Efficient FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Quality FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '2160p Remux FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', -999999
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Upscale';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 1000
FROM quality_profiles qp, custom_formats cf
WHERE qp.name = '720p Quality FR' AND cf.name = 'Extended Edition';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0
FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND cf.name = 'SKST';

-- Dictionarry V2 technical score ladder, retained without anglophone group tiers.
UPDATE quality_profile_custom_formats SET score = 200000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = 'DVD';
UPDATE quality_profile_custom_formats SET score = 220000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = 'DVD Remux';
UPDATE quality_profile_custom_formats SET score = 280000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = '480p WEB-DL';
UPDATE quality_profile_custom_formats SET score = 320000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = '480p Bluray';
UPDATE quality_profile_custom_formats SET score = 420000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = '576p Bluray';
UPDATE quality_profile_custom_formats SET score = 540000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name IN ('720p Bluray', '720p WEBRip');
UPDATE quality_profile_custom_formats SET score = 660000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = '720p WEB-DL';
UPDATE quality_profile_custom_formats SET score = 880000 WHERE quality_profile_name IN ('1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Quality FR', '2160p Remux FR') AND custom_format_name = '1080p Bluray';
UPDATE quality_profile_custom_formats SET score = 850000 WHERE quality_profile_name IN ('1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Quality FR', '2160p Remux FR') AND custom_format_name = '1080p WEBRip';
UPDATE quality_profile_custom_formats SET score = 860000 WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Quality FR', '2160p Remux FR') AND custom_format_name = '1080p WEB-DL';
UPDATE quality_profile_custom_formats SET score = 880000 WHERE quality_profile_name IN ('1080p Remux FR', '2160p Remux FR') AND custom_format_name = '1080p Bluray';
UPDATE quality_profile_custom_formats SET score = 860000 WHERE quality_profile_name IN ('1080p Remux FR', '2160p Remux FR') AND custom_format_name = '1080p WEB-DL';
UPDATE quality_profile_custom_formats SET score = 860000 WHERE quality_profile_name IN ('1080p Compact FR', '1080p Efficient FR', '2160p Efficient FR') AND custom_format_name = '1080p WEB-DL (h264)';
UPDATE quality_profile_custom_formats SET score = 840000 WHERE quality_profile_name IN ('1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Quality FR', '2160p Remux FR') AND custom_format_name = 'UHD Bluray';
UPDATE quality_profile_custom_formats SET score = 920000 WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Quality FR', '2160p Remux FR') AND custom_format_name = '2160p WEB-DL';
UPDATE quality_profile_custom_formats SET score = 920000 WHERE quality_profile_name IN ('1080p Remux FR', '2160p Remux FR') AND custom_format_name = '1080p Remux';
UPDATE quality_profile_custom_formats SET score = 980000 WHERE quality_profile_name = '2160p Remux FR' AND custom_format_name = '2160p Remux';
UPDATE quality_profile_custom_formats SET arr_type = 'radarr' WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '720p Quality FR') AND custom_format_name = '1080p WEBRip' AND arr_type = 'all';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 300000 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR')
  AND cf.name = '576p WEB-DL';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 840000 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('1080p Efficient FR', '2160p Efficient FR') AND cf.name = '1080p Bluray AVC';

-- Streaming-service adjustments from Dictionarry V2 that do not depend on release groups.
UPDATE quality_profile_custom_formats SET score = 2000
WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '720p Quality FR')
  AND custom_format_name = 'DSNP' AND score = 3000;
UPDATE quality_profile_custom_formats SET score = 2000
WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR')
  AND custom_format_name = 'DSNP' AND arr_type = 'radarr';
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR')
  AND custom_format_name = 'Disney+ Enhancement' AND arr_type = 'radarr';
UPDATE quality_profile_custom_formats SET score = 5000
WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR')
  AND custom_format_name = 'MA' AND arr_type = 'radarr';
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR')
  AND custom_format_name = 'Amazon Enhancement' AND arr_type = 'all';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr', 2000 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR') AND cf.name = 'Amazon Enhancement';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'sonarr', 1000 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR') AND cf.name = 'Amazon Enhancement';
DELETE FROM quality_profile_custom_formats
WHERE quality_profile_name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR')
  AND custom_format_name = 'BCORE' AND arr_type = 'all';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'radarr',
       CASE WHEN qp.name IN ('2160p Balanced FR', '2160p Efficient FR') THEN -999999 ELSE 6000 END
FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR') AND cf.name = 'BCORE';

-- French language preference is expressed as fallbacks inside Dictionarry's 1,000,000 scale.
-- A recognised high-quality VF/MULTi may beat a VOSTFR Remux, while a large quality gap still matters.
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR', 'Anime 1080p FR') AND cf.name = 'French Original';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', 0 FROM quality_profiles qp, custom_formats cf
WHERE qp.name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR', 'Anime 1080p FR') AND cf.name = 'French Original Marker';
UPDATE quality_profile_custom_formats SET score = 0
WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR', 'Anime 1080p FR') AND custom_format_name = 'French MULTi';
UPDATE quality_profile_custom_formats SET score = -50000
WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = 'French VF';
UPDATE quality_profile_custom_formats SET score = -200000
WHERE quality_profile_name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR') AND custom_format_name = 'French VOSTFR';
UPDATE quality_profile_custom_formats SET score = -20000 WHERE quality_profile_name = 'Anime 1080p FR' AND custom_format_name = 'French VOSTFR';
UPDATE quality_profile_custom_formats SET score = -60000 WHERE quality_profile_name = 'Anime 1080p FR' AND custom_format_name = 'French VF';
UPDATE quality_profile_custom_formats SET score = 0 WHERE quality_profile_name = 'Anime 1080p VOSTFR FR' AND custom_format_name = 'French VOSTFR';

INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999 FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French Original';
INSERT INTO quality_profile_custom_formats (quality_profile_name, custom_format_name, arr_type, score)
SELECT qp.name, cf.name, 'all', -999999 FROM quality_profiles qp, custom_formats cf
WHERE qp.name = 'Anime 1080p VOSTFR FR' AND cf.name = 'French Original Marker';

UPDATE quality_profiles SET upgrade_until_score = 1000000
WHERE name IN ('1080p Balanced FR', '1080p Compact FR', '1080p Efficient FR', '1080p Quality FR', '1080p Quality HDR FR', '1080p Remux FR', '2160p Balanced FR', '2160p Efficient FR', '2160p Quality FR', '2160p Remux FR', '720p Quality FR');
UPDATE quality_profiles SET upgrade_until_score = 101000
WHERE name IN ('Anime 1080p FR', 'Anime 1080p VOSTFR FR');
UPDATE quality_profiles SET minimum_custom_format_score = 0
WHERE name = 'Anime 1080p VOSTFR FR';
