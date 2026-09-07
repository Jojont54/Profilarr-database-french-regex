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

## Utiliser des trackers FR et internationaux ensemble

Deux méthodes sont possibles lorsque la même instance Radarr ou Sonarr reçoit des résultats provenant de trackers français et internationaux.

### Option 1: conserver les CF standards

Conservez `French MULTi` et `French Missing` dans vos profils. Ajoutez ensuite dans les Release Profiles une restriction propre à chaque tracker international afin de refuser les `MULTi` qui ne fournissent aucune preuve explicite de français. Cette méthode est simple si vous utilisez peu de trackers internationaux, mais chaque restriction doit être associée au bon tracker et maintenue avec ses regex.

Ajoutez la regex suivante dans **Must Contain**, puis limitez le Release Profile aux trackers internationaux concernés:

```regex
/(?:\b(?:VF(?:F|I|Q|B|C)?2?|VQ|VO(?:F|FR|Q)|TRUE[ ._-]?FR(?:ENCH)?|FRENCH|FRAN(?:C|Ç)AIS|FRE|FRA|VOST(?:[ ._-]*FR(?:E|A)?|F)?|SUB[ ._-]?(?:FR|FRA|FRE|FRENCH)|(?:FR|FRENCH)[ ._-]?SUBS?|ST[ ._-]?FR|FRENCH[ ._-]?CANADIAN|CANADIAN[ ._-]?FRENCH|QU(?:E|É)B(?:E|É)COIS|MULTI[ ._-]+CA[N]?|\d{3,4}p[ ._-]+CA[N]?|MULTI(?:[ ._+&\/-]+[A-Z]{2,3}){0,6}[ ._+&\/-]+FR|FR(?:[ ._+&\/-]+[A-Z]{2,3})+|(?:[A-Z]{2,3}[ ._+&\/-]+)+FR)\b|\[FR\])/i
```

Elle reconnaît notamment `VF`, `VFF`, `VFI`, `VFB`, `VFQ`, leurs variantes numérotées, `TRUEFRENCH`, `VOF`, `VOQ`, `VOSTFR`, `SUBFRENCH`, `FRSUBS`, `MULTI.FR`, `MULTI.CAN`, `FR+EN`, `EN+FR` et `[FR]`. Elle n'accepte volontairement pas un simple `MULTI`, puisqu'il ne prouve pas la présence du français sur un tracker international.

Les marqueurs québécois sont inclus parce qu'ils prouvent bien la présence d'une piste française. Ils restent ensuite soumis au score de `French VFQ`: si ce CF est banni, une release `MULTI.VFQ` ou `MULTI.CAN` sera toujours rejetée.

### Option 2: utiliser les CF INTL

Utilisez les CF INTL pour tous les résultats et retirez `French MULTi` ainsi que `French Missing` des profils concernés. Pour chaque tracker français, activez dans Prowlarr l'option **Replace MULTi by another language in release name**, puis sélectionnez `MULTi.FRENCH`. Laissez cette option désactivée sur les trackers internationaux.

![Réglage Prowlarr pour convertir MULTi en MULTi.FRENCH sur un tracker français](image/Prowlarr%20Multi.png)

Prowlarr transmet alors `MULTi.FRENCH` à Radarr ou Sonarr pour les trackers français. Cette forme constitue un marqueur français explicite et peut être validée par `French MULTi + Marker FR (INTL)`. Un `MULTi` provenant d'un tracker international reste inchangé et doit toujours être accompagné d'une team FR connue ou d'un marqueur français explicite.

La seconde méthode offre une logique unique dans les profils et évite de maintenir une restriction différente pour chaque tracker international. Elle est donc recommandée lorsque les deux types de trackers sont utilisés régulièrement.

## Utiliser les CF INTL

Pour adapter un profil aux trackers internationaux:

1. Retirez `French MULTi`.
2. Retirez `French Missing`.
3. Ajoutez les cinq CF INTL au profil.
4. Conservez les scores de `French Original`, `French Original Marker`, `French VF`, `French VOSTFR` et `French VFQ`.

### Exemple complet

Cet exemple conserve la priorité `MULTi / Original > VF > VOSTFR`, tout en bannissant les releases sans français et les VFQ:

```text
French MULTi                              -          retiré de ce profil INTL
French Missing                            -          retiré de ce profil INTL

French MULTi + Team FR (INTL)             0
French MULTi + Marker FR (INTL)           0
French Original                           0
French Original Marker                    0

French VF                            -50 000

French VOSTFR                        -200 000
French MultiSub + Team FR (INTL)     -200 000
French MultiSub + Marker FR (INTL)   -200 000

French VFQ                           -999 999
French Missing (INTL)                -999 999
```

Les deux CF `MultiSub` ne se cumulent pas: la présence d'un marqueur français explicite neutralise le chemin `Team FR`. Chaque preuve fiable peut donc recevoir directement le même score que `French VOSTFR`.

Ces valeurs sont illustratives. Vous pouvez conserver l'échelle de votre profil tant que l'ordre relatif reste cohérent et que la somme maximale ne dépasse pas son score maximal.

Si `French VFQ` est banni, une release `MULTi.VFQ` sera rejetée même si elle matche `French MULTi + Marker FR (INTL)`.

## Persistance après import

Les presets de renommage Radarr et Sonarr ajoutent les informations MediaInfo suivantes avant le release group:

```text
{MediaInfo AudioLanguagesAll}({MediaInfo SubtitleLanguagesAll})
```

`AudioLanguagesAll` conserve toutes les langues audio détectées, y compris l'anglais seul. Les parenthèses donnent un rôle clair au second bloc sans ajouter les préfixes `[AUDIO]` et `[SUB]`:

```text
[FR]()               audio français uniquement, aucun sous-titre détecté
[FR+EN]([FR])        audio français et anglais, sous-titres français
[EN+FR]([EN+FR])     ordre différent, français présent dans les deux blocs
[JA]([FR+EN])        audio japonais, sous-titres français et anglais
[EN+JA]([EN])        aucune preuve de français
```

Le bloc `[...]` immédiatement suivi de `(` représente toujours l'audio. Le bloc `([...])` représente toujours les sous-titres. La détection ne dépend pas de l'ordre des codes de langue.

Ces formes persistées sont intégrées directement aux regex existantes:

- `French MULTi` reconnaît un bloc audio contenant `FR` et au moins une autre langue, comme `[FR+EN](` ou `[EN+FR](`;
- `French MULTi + Marker FR (INTL)` reconnaît la même preuve MediaInfo multilingue;
- `French VF` reconnaît le bloc audio français seul `[FR](`;
- `French VOSTFR` reconnaît `FR` parmi les sous-titres, comme `([FR])`, `([FR+EN])` ou `([EN+FR])`.

Après analyse, `French MULTi + Team FR (INTL)` exclut cette preuve MediaInfo. Le fichier conserve ainsi uniquement `French MULTi + Marker FR (INTL)`, sans double score entre les chemins `Team FR` et `Marker FR`.
Il n'est pas nécessaire de reconnaitre `French MultiSub + Marker FR (INTL)`, puisque `French VOSTFR` est reconnu et scoré avec la même échelle, l'un des deux suffit à la conservation du score même si le Custom Format est différent.

Toutes les conditions `Release Title` de ces CF restent ainsi `Required`. Avant téléchargement, les regex analysent le titre de l'indexeur. Après analyse du fichier, les blocs MediaInfo maintiennent la bonne classification et empêchent `French Missing` ou `French Missing (INTL)` de réapparaître.
