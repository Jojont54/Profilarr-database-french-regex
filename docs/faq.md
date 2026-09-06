# FAQ

## Un `MULTi` sans `French` ou `VFF` est-il accepté?

Avec les Custom Formats standards, oui: `French MULTi` matche `MULTi`.

Cette logique est pratique sur trackers FR, où `MULTi` signifie généralement qu'une piste française est disponible.

Sur trackers internationaux, utilisez les Custom Formats `INTL`. Voir [Langues FR et trackers internationaux](languages-and-intl.md).

## `MULTi.VFQ` est-il accepté?

`MULTi.VFQ` peut matcher un Custom Format `MULTi`, mais `French VFQ` matche aussi.

Si votre profil score `French VFQ` à `-99999`, la release sera rejetée.

## Pourquoi la langue du profil est en `Any`?

La langue est gérée par Custom Formats pour éviter les conflits entre:

- `MULTi`;
- `VF`;
- `VOSTFR`;
- `French Original`;
- `VOF` / `VOQ`;
- `VFQ`.

Cela laisse Radarr/Sonarr voir les releases, puis Profilarr les classe par score.

## À quoi servent les marqueurs `[AUDIO]` et `[SUB]` dans le renommage?

Ils conservent une synthèse des langues réellement détectées dans le fichier:

```text
[AUDIO][FR]       français uniquement
[AUDIO][FR+--]    français avec une autre langue
[SUB][FR]         sous-titres français
[SUB][FR+--]      sous-titres français et autres langues
```

Les Custom Formats continuent d'utiliser le titre de la release avant téléchargement, puis ces marqueurs MediaInfo leur permettent de rester cohérents après import et renommage.

## Pourquoi ne pas tout mettre dans le README?

Le README sert de porte d'entrée. La documentation détaillée vit dans `docs/` pour rester versionnée, lisible et facile à modifier.

## Comment proposer une team?

Ouvrez une issue `Add Team` avec:

- nom de la team;
- type de releases;
- exemples complets de releases;
- tier proposé;
- notes utiles, par exemple encode spécifique, 4K toujours en h265, HDLight uniquement, etc.

## La branche V1 reçoit-elle encore les changements?

Non. `Profilarr-V1` conserve l'ancienne version YAML pour les utilisateurs qui restent sur Profilarr V1. La version recommandée est la V2 sur `stable`.
