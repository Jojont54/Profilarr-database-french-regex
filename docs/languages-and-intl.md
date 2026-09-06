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
MULTI.WITH.TRUEFRENCH
MULTI.VO.VFF
MULTI.EN.ES.VFF
```

Un marqueur français peut être précédé de plusieurs indications intermédiaires. Les mots de liaison comme `WITH`, les indications comme `VO`, `AUDIO` ou `DUAL`, ainsi que les codes courts de langue tels que `EN`, `ENG`, `ES` ou `ESP` sont acceptés. Les séparateurs `.`, `_`, `-`, `+`, `&`, `/` et `,` peuvent être combinés.

Sur tracker FR, `MULTi` signifie généralement qu'une piste française est présente. Sur tracker international, ce n'est pas toujours vrai: utilisez alors les Custom Formats `INTL`.

## French Original

`French Original` sert aux contenus uniquement en français dont le français est également la langue originale. Il utilise les métadonnées Radarr/Sonarr et ne demande aucun marqueur dans le titre.

La détection est volontairement stricte: une release contenant une autre langue ne matche pas `French Original`. Une release francophone multilingue doit être identifiée par `French MULTi`, tandis que les marqueurs explicites restent gérés séparément pour éviter les doubles matchs.

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

Après téléchargement, les sous-titres français détectés dans le fichier sont conservés dans son nom. À ce stade, `MultiSub` et `VOSTFR` sont volontairement normalisés sous `French VOSTFR`: une fois la présence du français confirmée, le nombre total de langues de sous-titres n'a plus d'influence sur la priorité de langue.

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

`French Missing` utilise deux conditions de langue alternatives: `French Except` ou `Original Except`. Il se déclenche donc lorsqu'au moins une langue détectée diffère du français ou de la langue originale, sauf lorsqu'un marqueur français reconnu neutralise le CF. Un contenu uniquement français dont le français est aussi la langue originale n'est pas considéré comme dépourvu de français, même si son titre ne contient aucun marqueur `FRENCH`, `VF` ou `VOF`.

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
MULTi.WITH.TRUEFRENCH
MULTi.VO.VFF
MULTi.EN.ES.VFF
```

Le marqueur français peut suivre directement `MULTi` ou apparaître après un maximum de six indications intermédiaires. Cela couvre notamment les listes de langues comme `MULTi.EN.ES.VFF`. Un marqueur `SUB` intercalé n'est volontairement pas accepté comme preuve d'une piste audio française.

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

`French Missing (INTL)` utilise les mêmes conditions alternatives `French Except` ou `Original Except`. Il se déclenche lorsqu'au moins une langue détectée diffère du français ou de la langue originale et qu'il n'y a ni marqueur français explicite après `MULTi` ou `MultiSub`, ni combinaison fiable `MULTi + team FR` ou `MultiSub + team FR`, ni `VF`, ni `VOSTFR`, ni `VFQ`, ni `VOF` / `VOQ`.

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

## Persistance après import avec MediaInfo

Les presets de renommage Radarr et Sonarr ajoutent cette information avant le release group:

```text
[AUDIO]{MediaInfo AudioLanguagesAll:FR+}[SUB]{MediaInfo SubtitleLanguagesAll:FR+}
```

Le suffixe `:FR+` conserve uniquement l'information utile à la logique française et remplace les autres langues par `--`:

```text
[AUDIO][FR]       audio français uniquement
[AUDIO][FR+--]    audio français avec au moins une autre langue
[AUDIO][--]       audio présent sans français détecté
[AUDIO]           aucune information audio exploitable

[SUB][FR]         sous-titres français uniquement
[SUB][FR+--]      sous-titres français avec au moins une autre langue
[SUB][--]         sous-titres présents sans français détecté
[SUB]             aucun sous-titre exploitable détecté
```

Trois regex atomiques exploitent ces marqueurs:

- `Renamed French MULTi` détecte `[AUDIO][FR+--]`;
- `Renamed French VF` détecte `[AUDIO][FR]`;
- `Renamed French Subs` détecte `[SUB][FR]` et `[SUB][FR+--]`.

Avant téléchargement, les regex historiques continuent d'analyser le titre fourni par l'indexeur. Après analyse du fichier, les marqueurs MediaInfo deviennent des alternatives aux marqueurs du titre. Ils neutralisent également `French Missing` et `French Missing (INTL)` lorsque du français est effectivement détecté.

Les exclusions croisées conservent une seule priorité principale: un audio `[FR+--]` reste `MULTi`, un audio `[FR]` reste `VF` ou `French Original`, et les sous-titres français ne produisent `VOSTFR` que lorsqu'aucun audio français prioritaire n'est détecté. `French VFQ` reste inchangé, car ce doublage est normalement rejeté avant import dans les profils fournis.

Pour les CF INTL, `French MULTi + Team FR (INTL)` reste une preuve utilisée avant téléchargement. Après analyse, tout audio `[FR+--]` est normalisé sous `French MULTi + Marker FR (INTL)`. Cette séparation empêche une release MULTi provenant d'une team FR de cumuler les scores `Team FR` et `Marker FR` après renommage. Les chemins `MultiSub` sont normalisés de la même façon sous `French VOSTFR` lorsque MediaInfo confirme des sous-titres français.
