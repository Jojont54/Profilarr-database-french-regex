# Documentation Dictionarry Database FR

Cette documentation explique comment utiliser la base Profilarr FR, comment choisir les profils et comment adapter les scores à vos usages.

## Pages principales

- [Installation et profils FR](setup-and-profiles.md)
- [Langues FR et trackers internationaux](languages-and-intl.md)
- [Scoring, Media Management et tailles](scoring-and-media.md)
- [FAQ](faq.md)

## Principe général

La base garde la logique Dictionarry:

- les regex détectent;
- les Custom Formats regroupent;
- les profils priorisent avec des scores.

Les regex de teams FR sont atomiques: une regex détecte une team ou un marqueur précis. Les scores ne sont pas dans les regex, mais dans les profils.

La couche technique commune suit les évolutions utiles de Dictionarry sans importer ses teams ni ses tiers US. Elle couvre notamment les sources, codecs, formats HDR, Extras, releases CAM et plateformes de streaming; les profils FR restent responsables de la langue et des tiers de teams.

## Branches

- `stable`: version Profilarr V2 recommandée.
- `develop`: branche de validation avant publication.
- `Profilarr-V1`: ancienne version YAML, conservée pour les utilisateurs encore sur Profilarr V1.
- `template-fr-base`: base neutre pour construire vos propres profils.

Pour une nouvelle installation, utilisez `stable`.
