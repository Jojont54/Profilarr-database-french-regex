# Langues FR et trackers internationaux

Cette page présente les Custom Formats de langue et leur utilisation selon le type de tracker.

`INTL` signifie **International**. Les CF portant ce suffixe sont destinés aux trackers internationaux, où le tag `MULTi` ne garantit pas la présence du français.

## Custom Formats de langue

### Communs à tous les trackers

- `French Original`: contenu uniquement en français dont le français est la langue originale;
- `French Original Marker`: marqueur `VOF` ou `VOQ` dans le titre;
- `French VF`: doublage français `VF`, `VFF`, `VFI`, `TRUEFRENCH` ou équivalent;
- `French VOSTFR`: audio original avec sous-titres français;
- `French VFQ`: doublage québécois ou canadien.

### Trackers français

- `French MULTi`: plusieurs pistes audio, dont le français;
- `French Missing`: aucune preuve suffisante de français selon la logique d'un tracker FR.

### Trackers internationaux

- `French MULTi + Team FR (INTL)`;
- `French MULTi + Marker FR (INTL)`;
- `French MultiSub + Team FR (INTL)`;
- `French MultiSub + Marker FR (INTL)`;
- `French Missing (INTL)`.

Pour un profil INTL, seuls `French MULTi` et `French Missing` sont remplacés. Tous les CF de la section commune restent utilisés et scorés normalement.

## Détection des langues

`French MULTi` reconnaît notamment:

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
FR+EN
EN+FR
```

Les mots ou codes de langue intermédiaires sont acceptés, ainsi que les séparateurs `.`, `_`, `-`, `+`, `&`, `/` et `,`. Quand une release matche `French MULTi`, les conditions d'exclusion empêchent le cumul avec `French VF` ou `French VOSTFR`.

`French Original` utilise les métadonnées Radarr/Sonarr. Sa détection est volontairement stricte: le français doit être la seule langue détectée et aussi la langue originale. Les marqueurs `VOF` et `VOQ` sont gérés par `French Original Marker` afin de couvrir les titres qui les conservent explicitement.

`French VF` reconnaît les marqueurs `VF`, `VFF`, `VFI`, `TRUEFRENCH`, `FRENCH`, `FRANCAIS` et `FRANÇAIS`.

`French VOSTFR` reconnaît notamment `VOST`, `VOSTFR`, `SUBFR`, `SUBFRENCH` et `FRENCH SUBS`. Après téléchargement, une présence confirmée de sous-titres français est normalisée sous ce même CF, qu'elle provienne initialement de `VOSTFR` ou de `MultiSub`.

`French VFQ` reconnaît notamment `VFQ`, `VFQ2`, `VQ`, `MULTI.CA`, `FRENCH.CA`, `FRENCH CANADIAN`, `CANADIAN FRENCH` et `QUEBECOIS`. Il peut recevoir un score fortement négatif si ce doublage n'est pas souhaité.

## Pourquoi les CF INTL

Sur un tracker FR, `MULTi` indique généralement qu'une piste française est présente. Sur un tracker international, il peut désigner n'importe quelle combinaison de langues, par exemple `VO + DE + ES`. De même, `MultiSub` annonce plusieurs sous-titres sans garantir le français.

Les CF INTL demandent donc une preuve supplémentaire:

- `French MULTi + Team FR (INTL)`: `MULTi` et une team FR connue;
- `French MULTi + Marker FR (INTL)`: `MULTi` et un marqueur français explicite;
- `French MultiSub + Team FR (INTL)`: `MultiSub` et une team FR connue;
- `French MultiSub + Marker FR (INTL)`: `MultiSub` et un marqueur français explicite;
- `French Missing (INTL)`: aucune preuve fiable de piste audio ou de sous-titres français.

Les teams sont récupérées automatiquement depuis les regex portant les tags `French` et `Release Group`. Une team FR seule ne valide pas la langue: `Batwheels.S01E23.1080p.MAX.WEB-DL.H.264-VARYG` reste `French Missing (INTL)` puisqu'il ne contient ni `MULTi`, ni `MultiSub`, ni marqueur français.

Pour `MULTi` comme pour `MultiSub`, les chemins `Team FR` et `Marker FR` sont mutuellement exclusifs afin d'éviter le double score. Une release `MULTi.VFF-TeamFR` utilise uniquement `French MULTi + Marker FR (INTL)`, tandis qu'une release `MultiSub.FR-TeamFR` utilise uniquement `French MultiSub + Marker FR (INTL)`.

## Utiliser les CF INTL

Pour adapter un profil aux trackers internationaux:

1. Retirez ou mettez à `0` le score de `French MULTi`.
2. Retirez ou mettez à `0` le score de `French Missing`.
3. Ajoutez les cinq CF INTL au profil.
4. Conservez les scores de `French Original`, `French Original Marker`, `French VF`, `French VOSTFR` et `French VFQ`.

### Exemple complet

Cet exemple conserve la priorité `MULTi / Original > VF > VOSTFR`, tout en bannissant les releases sans français et les VFQ:

```text
French MULTi                              0          désactivé pour ce profil INTL
French Missing                            0          désactivé pour ce profil INTL

French MULTi + Team FR (INTL)       +200 000
French MULTi + Marker FR (INTL)     +200 000
French Original                     +200 000
French Original Marker              +200 000

French VF                            +150 000

French VOSTFR                        +100 000
French MultiSub + Team FR (INTL)     +100 000
French MultiSub + Marker FR (INTL)   +100 000

French VFQ                           -999 999
French Missing (INTL)                -999 999
```

Les deux CF `MultiSub` ne se cumulent pas: la présence d'un marqueur français explicite neutralise le chemin `Team FR`. Chaque preuve fiable peut donc recevoir directement le même score que `French VOSTFR`.

Ces valeurs sont illustratives. Vous pouvez conserver l'échelle de votre profil tant que l'ordre relatif reste cohérent et que la somme maximale ne dépasse pas son score maximal.

Si `French VFQ` est banni, une release `MULTi.VFQ` sera rejetée même si elle matche `French MULTi + Marker FR (INTL)`.

## Persistance après import

Les presets de renommage Radarr et Sonarr ajoutent les informations MediaInfo suivantes avant le release group:

```text
[AUDIO]{MediaInfo AudioLanguagesAll:FR+}[SUB]{MediaInfo SubtitleLanguagesAll:FR+}
```

Le suffixe `:FR+` conserve seulement l'information nécessaire à la logique française:

```text
[AUDIO][FR]       audio français uniquement
[AUDIO][FR+--]    audio français avec au moins une autre langue
[AUDIO][--]       audio sans français détecté

[SUB][FR]         sous-titres français uniquement
[SUB][FR+--]      sous-titres français avec au moins une autre langue
[SUB][--]         sous-titres sans français détecté
```

Ces marqueurs sont intégrés directement aux regex existantes:

- `French MULTi` reconnaît aussi `[AUDIO][FR+--]`;
- `French VF` reconnaît aussi `[AUDIO][FR]`;
- `French VOSTFR` reconnaît aussi `[SUB][FR]` et `[SUB][FR+--]`.

Toutes les conditions `Release Title` de ces CF restent ainsi `Required`. Avant téléchargement, les regex analysent le titre de l'indexeur. Après analyse du fichier, les marqueurs MediaInfo maintiennent la bonne classification et empêchent `French Missing` ou `French Missing (INTL)` de réapparaître.
