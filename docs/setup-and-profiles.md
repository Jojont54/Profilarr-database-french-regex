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

- `1080p Balanced FR`: WEB-DL 1080p x264 stable, avec fallback HDLight x264 puis 720p, sans x265 ni Blu-ray.
- `1080p Compact FR`: HDLight et encodes x265 légers, avec fallback Efficient x265 puis 720p et paliers de taille de 0 à -700.
- `1080p Efficient FR`: encodes Blu-ray et WEB x265, avec fallback HDLight x265 puis WEB et Blu-ray x264.
- `1080p Quality FR`: encodes x264 transparents, avec fallback Balanced puis 720p pour préserver la compatibilité client.
- `1080p Quality HDR FR`: encodes x265 transparents uniquement lorsqu'ils sont HDR.
- `1080p Remux FR`: priorité aux remux 1080p, avec fallback Quality puis Balanced.
- `2160p Balanced FR`: WEB-DL 2160p stable, sans Blu-ray 2160p, avec fallback Quality 1080p.
- `2160p Compact FR`: 4KLight en priorité, avec fallback Efficient 1080p x265 et paliers de taille de 0 à -700.
- `2160p Efficient FR`: WEB-DL 2160p efficace, sans Blu-ray 2160p, avec fallback Efficient 1080p.
- `2160p Quality FR`: Blu-ray et WEB-DL 2160p sans concession, avec fallback Quality 1080p.
- `2160p Remux FR`: priorité aux remux 2160p, avec fallback Quality 2160p sans concession.
- `Anime 1080p FR`: compromis entre Efficient et Quality sans préférence entre x264 et x265, avec la priorité `MULTi` / `French Original` > `VOSTFR` > `VF`.
- `Anime 1080p VOSTFR FR`: même logique technique et mêmes tiers Anime, sans audio français et avec une sélection strictement VOSTFR.

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

Les teams sont classées une seule fois, indépendamment de la source, de la résolution et du profil:

```text
FR Team Tier 1 =  4000
FR Team Tier 2 =  3000
FR Team Tier 3 =  2000
FR Team Tier 4 =  1000
```

Cette échelle est identique dans les quatorze profils. Les anciens tiers WEB, Bluray, UHD Bluray, Remux, Compact, Efficient, Movie, TV, Scene et Anime ne sont plus utilisés comme CF distincts. Une team présente dans plusieurs anciennes listes est classée selon la moyenne de ses tiers, arrondie vers le meilleur tier. Par exemple, Tier 1 + Tier 2 donne Tier 1, tandis que Tier 1 + Tier 3 donne Tier 2.

Les teams uniquement connues comme Scene ou sans classement précis arrivent en Tier 4. Les teams présentes dans `FR LQ` sont totalement exclues des quatre tiers positifs et restent uniquement associées à leur score de bannissement.

Les profils Anime conservent deux catégories exclusives: `FR Anime SubFr` à `2000` et `FR Anime FanSub` à `1000`. Leurs teams sont retirées des quatre tiers génériques afin d'éviter un double score.

Les tiers ne contiennent aucune condition de source, résolution, codec ou type d'encode. Ces préférences restent gérées par les Custom Formats techniques du profil.
