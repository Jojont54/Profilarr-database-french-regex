# Langues FR et trackers internationaux

## Custom Formats de langue

- `French MULTi`
- `French Original`
- `French Original Marker`
- `French VF`
- `French VOSTFR`
- `French VFQ`
- `French Missing`

## French MULTi

`French MULTi` détecte les releases `MULTi` et les notations de langues combinées comme `FR+EN` ou `EN+FR`.

Il couvre aussi les variantes courantes:

```text
MULTI
MULTI.FR
MULTI.FRENCH
MULTI.TRUEFRENCH
MULTI.VFF
MULTI.VFI
MULTI.VFQ
MULTI.VOF
MULTI.VOQ
```

Sur tracker FR, `MULTi` signifie généralement qu'une piste française est présente. Sur tracker international, ce n'est pas toujours vrai: utilisez alors les Custom Formats `INTL`.

## French Original

`French Original` sert aux contenus dont la langue originale est française. Il évite de pénaliser un film ou une série francophone simplement parce qu'il n'y a pas de tag `MULTi`.

`French Original Marker` détecte les marqueurs de titre:

```text
VOF
VOQ
```

`VOQ` peut être techniquement québécois, mais si le contenu est original francophone, il ne doit pas être traité comme une mauvaise VFQ.

## French VF

`French VF` détecte les marqueurs de doublage français:

```text
VF
VFF
VFI
TRUEFRENCH
FRENCH
FRANCAIS
FRANÇAIS
```

Quand une release matche déjà `French MULTi`, `French VF` est neutralisé par condition `Not French MULTi` pour éviter le double score.

## French VOSTFR

`French VOSTFR` détecte les releases en audio original avec sous-titres français:

```text
VOST
VOSTFR
SUBFR
SUBFRENCH
FRENCH SUBS
```

## French VFQ

`French VFQ` détecte les variantes québécoises ou canadiennes:

```text
VFQ
VFQ2
VQ
MULTi.CA
FRENCH.CA
FRENCH CANADIAN
CANADIAN FRENCH
QUEBECOIS
```

Dans les profils FR prêts à l'emploi, ce Custom Format sert à éviter les doublages VFQ non souhaités.

## French Missing

`French Missing` se déclenche quand Radarr ou Sonarr ne détecte pas de langue française et qu'aucun marqueur français explicite n'est trouvé par les Custom Formats standards. Un contenu dont le français est la langue originale n'est donc pas considéré comme dépourvu de français, même si son titre ne contient aucun marqueur `FRENCH`, `VF` ou `VOF`.

Il est pensé pour les trackers FR ou les profils qui acceptent `MULTi` comme preuve suffisante de français.

## Pourquoi des Custom Formats INTL

Sur un tracker international, `MULTi` peut seulement vouloir dire plusieurs langues:

```text
VO + DE + ES
VO + IT + DE
VO + plusieurs sous-titres
```

Dans ce cas, faire confiance à `MULTi` seul peut accepter des releases sans français.

La même prudence s'applique à `MultiSub`: le tag indique plusieurs sous-titres, mais pas forcément des sous-titres français.

## Custom Formats INTL

- `French MULTi + Team FR (INTL)`
- `French MULTi + Marker FR (INTL)`
- `French MultiSub + Team FR (INTL)`
- `French MultiSub + Marker FR (INTL)`
- `French Missing (INTL)`

`French MULTi + Team FR (INTL)` matche si le titre contient `MULTi` et que la release vient d'une team FR connue. Les teams sont récupérées automatiquement depuis les regex taggées `French` + `Release Group`.

Une team FR seule ne suffit pas à valider la langue sur un tracker international. Une release comme `Batwheels.S01E23.1080p.MAX.WEB-DL.DDP5.1.H.264-VARYG` reste donc considérée comme `French Missing (INTL)` parce qu'elle n'a ni `MULTi`, ni `MultiSub`, ni marqueur français explicite.

`French MULTi + Marker FR (INTL)` matche uniquement si `MULTi` est accompagné d'un marqueur français explicite:

```text
MULTi.FR
MULTi.FRENCH
MULTi.TRUEFRENCH
MULTi.VFF
MULTi.VFI
MULTi.VFQ
MULTi.VOF
MULTi.VOQ
```

`French MultiSub + Team FR (INTL)` fonctionne de la même manière, mais avec un tag `MultiSub` à la place de `MULTi`.

`French MultiSub + Marker FR (INTL)` matche uniquement si `MultiSub` est accompagné d'un marqueur français explicite:

```text
MultiSub.FR
MultiSub.FRENCH
MultiSub.VOSTFR
MultiSub.SUBFR
MultiSub.SUBFRENCH
MultiSub.FRSUB
```

`MULTi` seul ne suffit pas, `MultiSub` seul ne suffit pas non plus, et une team FR seule ne suffit pas non plus.

`French Missing (INTL)` se déclenche quand Radarr ou Sonarr ne détecte pas de langue française et qu'il n'y a ni marqueur français explicite après `MULTi` ou `MultiSub`, ni combinaison fiable `MULTi + team FR` ou `MultiSub + team FR`, ni `VF`, ni `VOSTFR`, ni `VFQ`, ni `VOF` / `VOQ`.

## Comment utiliser les CF INTL

Ces Custom Formats sont optionnels. Pour un profil dédié aux trackers internationaux:

1. Retirez ou neutralisez le score de `French MULTi`.
2. Retirez ou neutralisez le score de `French Missing`.
3. Scorez à la place:

```text
French MULTi + Team FR (INTL)
French MULTi + Marker FR (INTL)
French MultiSub + Team FR (INTL)
French MultiSub + Marker FR (INTL)
French Missing (INTL)
```

Exemple de logique:

```text
French MULTi + Team FR (INTL)     + même score que MULTi
French MULTi + Marker FR (INTL)   + même score que MULTi
French MultiSub + Team FR (INTL)  + score de fallback VOSTFR/anime selon votre usage
French MultiSub + Marker FR (INTL)+ même score qu'un VOSTFR explicite
French Missing (INTL)             - gros malus ou ban
French VFQ                        - ban si vous ne voulez pas de VFQ
```

Si `VFQ` est banni dans le profil, une release `MULTi.VFQ` sera rejetée même si elle matche `French MULTi + Marker FR (INTL)`.
