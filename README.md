<p align="center">
  <a href="https://dictionarry.dev">
    <img src="https://img.shields.io/badge/Website-dictionarry.dev-blue" alt="Website">
  </a>
  <a href="https://github.com/Dictionarry-Hub/database">
    <img src="https://img.shields.io/badge/Base-Dictionarry-blue" alt="Dictionarry Database">
  </a>
  <a href="https://trash-guides.info">
    <img src="https://img.shields.io/badge/Sources-TRaSH%20Guides-blue" alt="TRaSH Guides">
  </a>
</p>

# Dictionarry Database FR Template

Cette base est un template français basé sur la [base officielle Dictionarry](https://github.com/Dictionarry-Hub/database) pour Profilarr, Radarr et Sonarr.

L'objectif est de fournir des briques FR propres et réutilisables: regex atomiques, Custom Formats techniques, Custom Formats de langue, tiers de teams FR simples, et profils de départ peu opinionated.

## Principe du template

Cette base n'impose pas une logique de scoring finale. Elle fournit plutôt une grille de départ claire, où les Custom Formats sont rangés par importance dans les profils pour que chaque utilisateur puisse ajuster les scores selon son usage.

Toutes les regex sont atomiques. Elles servent de briques réutilisables pour créer vos propres Custom Formats sans embarquer de score ni de logique de profil.

Les profils `Basic` utilisent des Custom Formats groupés pour aller vite, sauf quand le regroupement changerait trop le poids réel des releases. Par exemple, le CF `HDR / DV` regroupe `HDR`, `HDR10`, `HDR10+`, `DV`, `DoVi` et `Dolby Vision`, mais les sources principales restent séparées: `Bluray`, `WEB-DL`, `Remux`, `Full Disc`.

Les profils `Expert` séparent les Custom Formats quand le signal est différent afin de scorer plus finement: `FLAC`, `TrueHD`, `WEB-DL`, `WEBRip`, `Dolby Vision`, `HDR10+`, `HDLight`, `4KLight`, etc.

Quand plusieurs notations veulent dire la même chose, elles restent dans un seul CF, même en Expert. Exemple: `2160p`, `UHD` et `4K` alimentent le CF `2160p`; `h265`, `H.265`, `HEVC` et `x265` alimentent le CF `h265`.

L'idée est simple: l'utilisateur ouvre un profil, voit les blocs déjà triés dans un ordre logique, puis met les points qu'il veut sur chaque signal.

Les profils de départ utilisent une échelle maximale de `10000` points. Les langues françaises et les tiers de teams portent l'essentiel du score, tandis que les détails techniques restent volontairement faibles pour servir de réglages fins.

## Ce qui change

- Ajout de regex atomiques pour les teams FR.
- Ajout de Custom Formats FR de langue: `French MULTi`, `French Original`, `French VF`, `French VOSTFR`, `French VFQ`, `French Missing`.
- Ajout de Custom Formats techniques utiles: sources, codecs, audio, HDR, éditions, qualités, `HDLight`, `4KLight`, etc.
- Ajout de tiers FR volontairement simples: media, anime, fansub, scène non classée et groupes à bannir.
- Conservation de la logique Media Management Dictionarry.
- Conservation des opérations techniques utiles de Dictionarry V2.

## Sources FR

Les listes de teams et les tiers FR sont inspirés et recoupés avec:

- [TRaSH Guides - French HQ Source Groups](https://trash-guides.info/Radarr/Radarr-collection-of-custom-formats/#french-hq-source-groups)
- [leof28/profilarr-dbFR](https://github.com/leof28/profilarr-dbFR)
- [ataaki/french-multi-arr-custom-formats](https://github.com/ataaki/french-multi-arr-custom-formats)
- [mcflykid/french-profilarr-database](https://github.com/mcflykid/french-profilarr-database)

## Structure FR

### Regex patterns

Chaque team FR est représentée par une regex atomique intégrée aux opérations PCD.

Le principe est volontairement simple:

- une regex détecte une seule team ou un seul marqueur technique;
- une regex ne porte aucun score;
- une regex peut être réutilisée dans plusieurs Custom Formats;
- les scores restent dans les profils, pas dans les regex;
- les tiers regroupent des teams, tandis que les CF techniques décrivent la source, la résolution, le codec, le HDR, l'audio ou les encodes light.

Cette séparation permet de construire des profils très différents sans modifier les regex de base.

### Custom Formats FR

Les Custom Formats FR sont séparés par usage.

Tiers de teams:

- `FR Media Tier 1`
- `FR Media Tier 2`
- `FR Media Tier 3`
- `FR Anime Tier 1`
- `FR Anime Tier 2`
- `FR Anime Tier 3`
- `FR Anime FanSub`
- `FR Scene Unranked`
- `FR Low Quality / Banned`

Langue:

- `French MULTi`
- `French Original`
- `French Original Marker`
- `French VF`
- `French VOSTFR`
- `French VFQ`
- `French Missing`

Technique:

- Sources, résolutions, codecs, HDR, audio et éditions issus de Dictionarry.
- Sources génériques: `Bluray`, `WEB-DL`, `WEBRip`, `BDRip / BRRip`, `Rip`, `HDTV`.
- Résolutions génériques: `480p` couvre aussi `SD`, `576p` couvre aussi `PAL`, `720p` couvre aussi `HD`, `1080p` couvre aussi `FHD` / `Full HD`, et `2160p` couvre aussi `UHD` / `4K`.
- Codecs génériques: `AV1`, `h264`, `h265`. Le CF `h264` couvre aussi `AVC` / `x264`, et le CF `h265` couvre aussi `HEVC` / `x265`.
- HDR et présentation: `HDR`, `HDR10+`, `HDR10`, `HLG`, `PQ`, `Dolby Vision`, `IMAX`.
- HDR groupé: `HDR / DV`, qui couvre `HDR`, `HDR10`, `HDR10+`, `HLG`, `PQ`, `DV`, `DoVi` et `Dolby Vision`.
- Audio générique: `Lossless Audio`, utilisable sur toutes les résolutions et incluant `FLAC`, `TrueHD`, `DTS-HD MA`, `DTS-X` et `PCM`.
- Audio compressé: `Lossy Audio`, couvrant `AAC`, `Dolby Digital`, `Dolby Digital +`, `DTS`, `DTS-ES`, `DTS-HD HRA`, `Opus` et `MP3`.
- Canaux audio: `2.0 Stereo`, `5.1 Surround` et `7.1 Surround`.
- `HDLight` et `4KLight` comme marqueurs techniques dédiés.
- Groupes pratiques pour profils simples: `WEB Source`, `Disc Source`, `Rip Source`, `Modern Codec`, `Legacy Codec`, `Light Encode`, `French Accepted`.

Les alias techniques sont volontairement stricts pour éviter les faux positifs: `HD` ne matche pas `HDLight` / `HDTV` / `HD-DVD`, `UHD` ne matche pas `UHDLight`, `4K` ne matche pas `4KLight`, `WEB` ne matche pas `WEBRip` / `WEBLight`, et `BD` / `BluRay` ne matche pas `BDRip` / `BDLight`.

Les scores restent dans les profils, pas dans les regex. Cela conserve la logique Dictionarry: les regex détectent, les Custom Formats regroupent, les profils priorisent.

## Profils

Cette branche sert de base template. Les anciens profils opinionated sont remplacés par quelques profils génériques, peu scorés et faciles à adapter.

Profils Basic:

- `Template Basic 1080p FR`
- `Template Basic 2160p FR`

Les profils Basic utilisent surtout les Custom Formats groupés, mais gardent les langues, sources principales, résolutions, codecs et encodes light visibles séparément: `French MULTi`, `French Original`, `French VF`, `French VOSTFR`, `Bluray`, `WEB-DL`, `Remux`, `Full Disc`, `AV1`, `h264`, `h265`, `HDLight`, `4KLight`, audio groupé, HDR groupé et tiers FR.

Profils Expert:

- `Template Expert 1080p FR`
- `Template Expert 2160p FR`

Les profils Expert utilisent les Custom Formats atomiques pour permettre un scoring plus fin. La logique de départ reste volontairement lisible sur `10000` points: audio autour de `1`, résolution autour de `2`, rip / source secondaire autour de `2` à `3`, codec autour de `4`, HDR autour de `5`, source principale et encodes light autour de `6`, langue autour de `1000` à `2000`, puis tiers FR autour de `2500` à `4000`.

Dans les profils fournis, `-99999` est la valeur prévue pour bannir strictement un terme, une langue ou un groupe.

Exemple: mettre `1080p` à `+1000` permet de valoriser la 1080p; mettre `2160p` à `-99999` permet d'interdire la 4K.

## Media management

Les opérations SQL V2 intègrent les évolutions Dictionarry:

- presets renommes `Radarr` et `Sonarr` au lieu de `default`;
- preset supplementaire `Radarr / Editionless`;
- Delay Profiles `Radarr` et `Sonarr` en `prefer_torrent`, avec un délai de `360` minutes;
- protection `Full Disc` contre les correspondances de source `HDTV`.

## Support

Pour un problème lié à cette adaptation FR, ouvre une issue avec le template adapté:

- Bug
- Add Team
- Change Score
- Feature Request
- Support

Pour la documentation generale Dictionarry et Profilarr:

- [Documentation Dictionarry](https://dictionarry.dev)
- [Repository Dictionarry](https://github.com/Dictionarry-Hub/database)
- [Repository Profilarr](https://github.com/Dictionarry-Hub/profilarr)
