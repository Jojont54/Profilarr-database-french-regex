# Installation et profils FR

## Installation recommandée

1. Dans Profilarr, ajoutez cette base depuis GitHub.
2. Utilisez la branche `stable`.
3. Synchronisez les profils et Custom Formats souhaités vers Radarr et Sonarr.
4. Vérifiez dans Radarr/Sonarr que les profils importés ont bien la langue en `Any`.

La logique de langue est volontairement gérée par Custom Formats, pas par le filtre de langue Radarr/Sonarr. Cela évite les conflits entre `MULTi`, `VF`, `VOSTFR`, `French Original`, `VOF`, `VOQ` et `VFQ`.

## Après une ancienne installation V2

La première version Profilarr V2 de cette DB utilisait un unique fichier SQL. Elle a ensuite été remplacée par des opérations SQL séparées pour garder le projet lisible.

Si vous aviez lié la DB très tôt et que Profilarr importe mal la base, supprimez puis ajoutez à nouveau la DB. Les utilisateurs de `Profilarr-V1` ne sont pas concernés.

## Liste des profils

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

## Quel profil choisir

- `1080p Balanced FR`: usage général 1080p WEB-DL AVC/x264. 
- `1080p Compact FR`: fichiers plus petits, logique HDLight.
- `1080p Efficient FR`: 1080p efficace, orienté HEVC/x265 fiable.
- `1080p Quality FR`: qualité 1080p plus haute.
- `1080p Remux FR`: priorité aux remux 1080p, fallback qualité.
- `2160p Balanced FR`: 4K WEB-DL stable, avec fallback 1080p Quality.
- `2160p Compact FR`: 4KLight en priorité, avec fallback 1080p.
- `2160p Efficient FR`: 4K efficace, avec fallback 1080p Efficient.
- `2160p Quality FR`: 4K qualité, avec fallback 1080p Quality.
- `2160p Remux FR`: priorité aux remux 2160p, avec fallback 2160p Quality et 1080p Remux.
- `Anime 1080p FR`: anime 1080p sur l'échelle Dictionarry de 1 000 000 points, avec un socle technique proche de `1080p Quality FR` et la priorité `MULTi` / `French Original` > `VOSTFR` > `VF`.
- `Anime 1080p VOSTFR FR`: même scoring technique et mêmes tiers Anime, avec une sélection strictement VOSTFR.

Les profils sont des bases de départ. Vous pouvez adapter les scores selon vos trackers, votre stockage et vos préférences.

## Logique de langue des profils

Profils classiques:

```text
MULTi / French Original > VF > VOSTFR
```

Profils anime:

```text
MULTi / French Original > VOSTFR > VF
```

`VFQ` est pénalisé ou banni sur tout les profils. Un contenu original francophone, y compris québécois, peut être reconnu via `French Original` ou les marqueurs `VOF` / `VOQ`.

## Logique de tiers

Les tiers FR servent à classer les teams selon le type de profil:

- tiers qualité;
- tiers compact / light;
- tiers efficient;
- tiers remux;
- tiers anime;
- scene tier;
- low quality / banned.

Les tiers à très gros score sont utilisés uniquement quand ils remplacent un score technique important. Les tiers plus généraux ajoutent un bonus plus modéré.
