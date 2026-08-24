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

# Dictionarry Database FR

Base Profilarr V2 pour Radarr et Sonarr, dérivée de [Dictionarry](https://github.com/Dictionarry-Hub/database) et adaptée aux usages francophones.

L'objectif est simple: garder la base technique Dictionarry, puis ajouter une couche FR propre avec regex atomiques pour les teams, Custom Formats de langue, tiers FR et profils prêts à l'emploi.

## Branche recommandée

- `stable`: version Profilarr V2 recommandée, avec profils FR prêts à l'emploi.
- `develop`: branche de travail avant stabilisation.
- `Profilarr-V1`: ancienne version YAML pour Profilarr V1. Elle ne contient pas les derniers changements.
- `template-fr-base`: base neutre pour créer vos propres profils FR.

Pour une nouvelle installation, utilisez `stable`.

## Ce que contient la DB

- Regex atomiques pour les teams FR.
- Custom Formats FR de langue: `French MULTi`, `French Original`, `French VF`, `French VOSTFR`, `French VFQ`, `French Missing`.
- Custom Formats `INTL` pour les trackers internationaux.
- Tiers FR inspirés et recoupés avec plusieurs sources francophones.
- Profils FR basés sur la logique Dictionarry V2.
- Base technique commune maintenue avec les évolutions utiles de Dictionarry: sources, codecs, HDR/Dolby Vision/SDR, Extras, CAM et plateformes de streaming.
- Media Management aligné sur Dictionarry et Delay Profiles FR prêts à l'emploi.
- Profils anglophones et tiers US retirés de la publication V2 FR pour garder une base plus légère.

## Profils disponibles

```text
720p Quality FR
1080p Balanced FR
1080p Compact FR
1080p Efficient FR
1080p Quality FR
1080p Quality HDR FR
1080p Remux FR
2160p Balanced FR
2160p Compact FR
2160p Efficient FR
2160p Quality FR
2160p Remux FR
Anime 1080p FR
Anime 1080p VOSTFR FR
```

Les profils classiques priorisent `MULTi` / `French Original` > `VF` > `VOSTFR`.

Les profils anime priorisent `MULTi` / `French Original` > `VOSTFR` > `VF`.

## Documentation

La documentation détaillée est dans le dossier `docs/`:

- [Accueil de la documentation](docs/index.md)
- [Installation et profils FR](docs/setup-and-profiles.md)
- [Langues FR et trackers internationaux](docs/languages-and-intl.md)
- [Scoring, Media Management et tailles](docs/scoring-and-media.md)
- [FAQ](docs/faq.md)

## Sources FR

Les listes de teams, les tiers et les choix de scoring FR sont inspirés et recoupés avec:

- [TRaSH Guides - French HQ Source Groups](https://trash-guides.info/Radarr/Radarr-collection-of-custom-formats/#french-hq-source-groups)
- [leof28/profilarr-dbFR](https://github.com/leof28/profilarr-dbFR)
- [ataaki/french-multi-arr-custom-formats](https://github.com/ataaki/french-multi-arr-custom-formats)
- [mcflykid/french-profilarr-database](https://github.com/mcflykid/french-profilarr-database)
- [Dictionarry-Hub/database](https://github.com/Dictionarry-Hub/database)

## Support

Pour un problème lié à cette adaptation FR, ouvrez une issue avec le template adapté:

- Bug
- Add Team
- Change Score
- Feature Request
- Support

Pour la documentation générale Dictionarry et Profilarr:

- [Documentation Dictionarry](https://dictionarry.dev)
- [Repository Dictionarry](https://github.com/Dictionarry-Hub/database)
- [Repository Profilarr](https://github.com/Dictionarry-Hub/profilarr)
