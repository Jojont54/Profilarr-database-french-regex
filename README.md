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

Cette base est une adaptation francaise de la [base officielle Dictionarry](https://github.com/Dictionarry-Hub/database) pour Profilarr, Radarr et Sonarr.

L'objectif est de garder une base propre, maintenable et facile a rebase depuis Dictionarry, tout en ajoutant une couche FR dediee aux releases francophones.

## Ce qui change

- Ajout de `regex_patterns` atomiques: un fichier YAML par team FR.
- Ajout de `custom_formats` FR avec une tier list inspiree de plusieurs sources francophones.
- Ajout de profils FR bases sur la logique Dictionarry, avec les memes tags que les profils originaux.
- Ajout d'une priorisation langue: `MULTi` > `VF` > `VOSTFR` pour les profils classiques, et `MULTi` > `VOSTFR` > `VF` pour le profil anime.
- Interdiction des releases `VFQ` dans les profils FR.
- Conservation des media management Dictionarry sans modification.

## Sources FR

Les listes de teams, les tiers et les choix de scoring FR sont inspires et recoupes avec:

- [TRaSH Guides - French HQ Source Groups](https://trash-guides.info/Radarr/Radarr-collection-of-custom-formats/#french-hq-source-groups)
- [leof28/profilarr-dbFR](https://github.com/leof28/profilarr-dbFR)
- [ataaki/french-multi-arr-custom-formats](https://github.com/ataaki/french-multi-arr-custom-formats)
- [mcflykid/french-profilarr-database](https://github.com/mcflykid/french-profilarr-database)

## Structure FR

### Regex patterns

Chaque team FR est declaree dans son propre fichier YAML sous `regex_patterns`.

Exemple de logique:

```yaml
name: BOUBA
pattern: '(?<=^|[\s.-])BOUBA\b'
tags:
- Release Group
- French
```

Cette approche evite les gros blocs regex difficiles a maintenir et permet de brancher les teams proprement dans plusieurs Custom Formats.

### Custom Formats FR

Les Custom Formats FR sont separes par usage:

- `FR Global Tier 01/02`
- `FR Scene Groups`
- `FR HDLight Tier`
- `FR LQ`
- `FR Anime Tier 01/02/03`
- `FR Anime FanSub`
- `FR Movie ...`
- `FR TV ...`
- `French MULTi`
- `French VF`
- `French VOSTFR`
- `French VFQ`
- `French Missing`

Les scores restent dans les profils, pas dans les regex. Cela conserve la logique Dictionarry: les regex detectent, les Custom Formats regroupent, les profils priorisent.

## Profils FR ajoutes

```text
1080p Balanced FR
1080p Compact FR
1080p Efficient FR
1080p Quality FR
1080p Quality HDR FR
1080p Remux FR
2160p Balanced FR
2160p Efficient FR
2160p Quality FR
2160p Remux FR
720p Quality FR
Anime 1080p FR
Anime 1080p VOSTFR FR
```

`Anime 1080p FR` priorise `MULTi` > `VOSTFR` > `VF`.
`Anime 1080p VOSTFR FR` priorise uniquement les releases `VOSTFR`.

## Media management

Les fichiers dans `media_management` sont inchanges par rapport a Dictionarry:

- `naming.yml`
- `quality_definitions.yml`
- `misc.yml`

## Support

Pour un probleme lie a cette adaptation FR, ouvre une issue avec le template adapte:

- Bug
- Add Team
- Change Score
- Feature Request
- Support

Pour la documentation generale Dictionarry et Profilarr:

- [Documentation Dictionarry](https://dictionarry.dev)
- [Repository Dictionarry](https://github.com/Dictionarry-Hub/database)
- [Repository Profilarr](https://github.com/Dictionarry-Hub/profilarr)
