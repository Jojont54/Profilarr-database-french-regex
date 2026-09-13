# Scoring, Media Management et tailles

## Principe du scoring

Les scores sont dans les profils, pas dans les regex.

La base fournit des profils prêts à l'emploi, mais vous pouvez les adapter:

- selon vos trackers;
- selon votre stockage;
- selon votre tolérance au Remux, au 4KLight, au HDLight ou au WEBRip;
- selon vos préférences de langue.

## Score maximum

La plupart des profils Dictionarry V2 utilisent une limite autour de `1000000`.

La branche `template-fr-base` utilise une échelle plus simple de `10000` points pour faciliter la création de profils personnalisés.

Le principe reste le même: si une release atteint le score maximum du profil, elle peut bloquer les upgrades. Gardez donc le cumul de vos meilleurs scores sous le plafond, sauf si c'est volontaire.

## Recommandation pour un profil personnalisé

Pour une échelle à `10000`, une base simple peut être:

- `1` à `9` pour le son et les petits détails;
- `10` à `90` pour les bonus vidéo comme `HDR`, `IMAX` ou `DV`;
- `100` à `900` pour la qualité vidéo, la source, les codecs ou les encodes light;
- `1000` à `9000` pour la résolution ou la cible principale du profil;
- `-99999` pour bannir strictement.

Les tiers de teams peuvent rester sur une échelle intermédiaire si vous voulez qu'ils comptent moins que la résolution mais plus qu'un petit détail technique.

## Scores des teams

La base applique désormais une échelle unique à tous les profils:

```text
FR Team Tier 1 =  4000
FR Team Tier 2 =  3000
FR Team Tier 3 =  2000
FR Team Tier 4 =  1000
```

Dans les deux profils Anime, `FR Anime SubFr` vaut `2000` et `FR Anime FanSub` vaut `1000`. Ces catégories sont exclusives des quatre tiers génériques et ne peuvent donc pas se cumuler avec eux.

Les teams de `FR LQ` sont exclues des quatre tiers positifs, y compris du Tier 4. Elles conservent uniquement leur score de bannissement.

Le score de team est un bonus distinct du score technique. Une release peut ainsi cumuler son tier avec sa source, sa résolution, son codec, son audio et ses formats HDR, sans que la team impose elle-même l'une de ces caractéristiques.

## Bans

Utilisez un score très négatif pour interdire:

```text
-99999
```

Cas fréquents:

- `French Missing`;
- `French Missing (INTL)`;
- `French VFQ`;
- `Remux` dans un profil compact;
- `2160p` dans un profil 1080p strict;
- `HDLight` / `4KLight` dans un profil qualité.

## VFQ

Si vous ne voulez jamais de VFQ:

```text
French VFQ = -99999
```

Si vous acceptez la VFQ seulement comme fallback, utilisez plutôt un malus modéré.

## Trackers FR vs INTL

Pour les trackers FR, `French MULTi` standard peut suffire.

Pour les trackers internationaux, utilisez plutôt:

```text
French MULTi + Team FR (INTL)
French MULTi + Marker FR (INTL)
French MultiSub + Team FR (INTL)
French MultiSub + Marker FR (INTL)
French Missing (INTL)
```

Sur les trackers internationaux, une team FR connue seule ne suffit pas à valider la langue. Il faut soit un marqueur français explicite, soit une combinaison `MULTi + team FR` ou `MultiSub + team FR`.

Voir [Langues FR et trackers internationaux](languages-and-intl.md).

## Media Management

La DB conserve la logique Media Management de Dictionarry V2:

- presets `Radarr` et `Sonarr`;
- preset `Radarr / Editionless`;
- preset `Radarr / Jellyfin-Emby` avec identifiant `[tmdbid-{TmdbId}]`;
- Delay Profiles `Radarr` et `Sonarr` en `prefer_torrent`, conservés pour compatibilité;
- Delay Profiles FR supplémentaires: `Ratio Boost`, `Balanced`, `Quality`;
- protection `Full Disc` contre certaines correspondances incorrectes.

Les formats de renommage Radarr et Sonarr ajoutent aussi `{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}`. Le premier bloc `[...]` contient les langues audio et le bloc optionnel `([...])` les langues de sous-titres. En l'absence de sous-titres détectés, les parenthèses ne sont pas ajoutées. Les Custom Formats peuvent ainsi retrouver après import une piste audio française unique, un audio français multilingue ou des sous-titres français, même lorsque le marqueur original de la release a disparu du nom.

## Delay Profiles

La DB fournit plusieurs Delay Profiles pour adapter le délai à votre usage:

```text
Ratio Boost : torrent immédiat, usenet retardé de 360 minutes
Balanced    : torrent et usenet retardés de 120 minutes
Quality     : torrent et usenet retardés de 360 minutes
```

`Quality` reprend la logique Dictionarry: attendre plus longtemps laisse davantage de temps aux meilleures releases pour apparaître.

`Balanced` réduit l'attente tout en gardant un petit délai pour éviter de prendre trop vite la première release disponible.

`Ratio Boost` sert surtout aux setups orientés torrents: les torrents peuvent être pris immédiatement, tandis que l'usenet attend pour laisser la priorité au torrent.

## Taille des fichiers

Avant de toucher aux tailles ou aux scores, il faut distinguer trois couches:

- **Quality Definitions = garde-fou de taille.** Elles évitent les fichiers absurdes: trop petits, trop compressés, ou trop gros.
- **Custom Formats = vraie logique de préférence.** C'est là que vous favorisez `x265`, les bonnes teams, le `WEB-DL` plutôt que le `WEBRip`, le `Bluray`, le `MULTi` FR propre, l'audio, le HDR, etc.
- **Quality Profile = hiérarchie des qualités.** C'est lui qui dit si un `Bluray-1080p` doit remplacer un `WEB-1080p`, si un `Remux` est autorisé, où se trouve le cutoff, et quels Custom Formats sont scorés.

### Quality Profiles et Quality Definitions

Les Quality Definitions définissent les limites de taille globales par qualité, en Mo/min, pour toute l'instance Radarr ou Sonarr. Ce n'est pas un réglage par profil: si vous changez la limite du `1080p WEB-DL`, elle s'applique à tous les profils qui utilisent cette qualité.

Il vaut donc mieux les utiliser comme garde-fou large, par exemple pour refuser un fichier beaucoup trop petit ou beaucoup trop gros. Le choix fin entre deux bonnes releases doit rester dans les Custom Formats et les scores du profil.

Exemples de réglages de départ, à adapter selon vos trackers et votre stockage:

```text
Usage Compact / Light
1080p WEB-DL / WEBRip : max ~ 80 à 120 Mo/min
1080p Bluray          : max ~ 100 à 150 Mo/min
2160p WEBRip / 4KLight: max ~ 150 à 250 Mo/min

Usage Balanced / Efficient
1080p WEB-DL / WEBRip : max ~ 120 à 180 Mo/min
1080p Bluray          : max ~ 150 à 220 Mo/min
2160p WEB-DL          : max ~ 250 à 450 Mo/min

Usage Quality / Remux
1080p WEB-DL / Bluray : max ~ 180 à 350 Mo/min
2160p WEB-DL / Bluray : max ~ 400 à 800 Mo/min
Remux                 : laissez très permissif si vous utilisez un profil Remux
```

Pour Sonarr, soyez plus souple que pour Radarr: un épisode de 20 minutes, un épisode de 55 minutes, un double épisode et un season pack ne se comportent pas pareil. Des limites trop agressives peuvent rejeter de bonnes releases avant même que les Custom Formats aient pu les classer.

### Custom Formats de taille

Les profils `1080p Compact FR` et `2160p Compact FR` utilisent des Custom Formats de taille sur une petite échelle allant de `0` à `-700`. Ces malus départagent des releases comparables sans renverser les priorités de source, de résolution ou de team.

Chaque tranche impose sa résolution. Dans `2160p Compact FR`, les paliers 2160p ne pénalisent donc pas le fallback 1080p.

#### Radarr 1080p Compact

| Taille du film | Score |
|---|---:|
| Jusqu'à 2 Gio | 0 |
| Plus de 2 à 3 Gio | -100 |
| Plus de 3 à 4 Gio | -200 |
| Plus de 4 à 6 Gio | -300 |
| Plus de 6 à 8 Gio | -400 |
| Plus de 8 à 10 Gio | -500 |
| Plus de 10 à 15 Gio | -600 |
| Plus de 15 Gio | -700 |

#### Radarr 2160p Compact

| Taille du film | Score |
|---|---:|
| Jusqu'à 6 Gio | 0 |
| Plus de 6 à 8 Gio | -100 |
| Plus de 8 à 10 Gio | -200 |
| Plus de 10 à 12 Gio | -300 |
| Plus de 12 à 15 Gio | -400 |
| Plus de 15 à 18 Gio | -500 |
| Plus de 18 à 25 Gio | -600 |
| Plus de 25 Gio | -700 |

#### Sonarr 1080p Compact

| Type et taille | Score de taille | Avec `Season Pack +10` |
|---|---:|---:|
| Season Pack jusqu'à 10 Gio | 0 | +10 |
| Épisode jusqu'à 800 Mio | -100 | -100 |
| Season Pack de plus de 10 à 20 Gio | -200 | -190 |
| Épisode de plus de 800 Mio à 1,2 Gio | -300 | -300 |
| Season Pack de plus de 20 à 35 Gio | -400 | -390 |
| Épisode de plus de 1,2 à 2 Gio | -500 | -500 |
| Season Pack de plus de 35 Gio | -600 | -590 |
| Épisode de plus de 2 Gio | -700 | -700 |

#### Sonarr 2160p Compact

| Type et taille | Score de taille | Avec `Season Pack +10` |
|---|---:|---:|
| Season Pack jusqu'à 20 Gio | 0 | +10 |
| Épisode jusqu'à 2 Gio | -100 | -100 |
| Season Pack de plus de 20 à 30 Gio | -200 | -190 |
| Épisode de plus de 2 à 3 Gio | -300 | -300 |
| Season Pack de plus de 30 à 50 Gio | -400 | -390 |
| Épisode de plus de 3 à 5 Gio | -500 | -500 |
| Season Pack de plus de 50 Gio | -600 | -590 |
| Épisode de plus de 5 Gio | -700 | -700 |

Les tranches sont strictement exclusives. Côté Sonarr, chaque CF impose aussi `Season Pack` ou `Not Season Pack`, ce qui empêche le cumul des paliers et conserve le bonus `Season Pack +10` comme simple départage.

Les Quality Definitions restent le garde-fou global pour refuser les fichiers absurdes. Ces Custom Formats servent uniquement à préférer la release la plus légère parmi les choix déjà acceptables.
