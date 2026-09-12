# Langues FR et trackers internationaux

Cette page présente les Custom Formats de langue et leur utilisation selon le type de tracker.

`INTL` signifie **International**. Les CF portant ce suffixe sont destinés aux trackers internationaux, où le tag `MULTi` ne garantit pas la présence du français.

## Custom Formats de langue

### Communs à tous les indexeurs

- `French Original`: contenu uniquement en français dont le français est la langue originale
- `French Original Marker`: marqueur `VOF` ou `VOQ` dans le titre
- `French VF`: doublage français `VF`, `VFF`, `VFI`, `TRUEFRENCH` ou équivalent
- `French VOSTFR`: audio original avec sous-titres français
- `French VFQ`: doublage québécois ou canadien

### Pour les indexeurs francophones

- `French MULTi`: plusieurs pistes audio, dont le français
- `French Missing`: aucune preuve suffisante de français selon la logique d'un indexeur francophone

### Pour les indexeurs internationaux

- `French MULTi + Team FR (INTL)`: `MULTi` provenant d'une team FR connue
- `French MULTi + Marker FR (INTL)`: `MULTi` accompagné d'un marqueur français explicite
- `French MultiSub + Team FR (INTL)`: `MultiSub` provenant d'une team FR connue
- `French MultiSub + Marker FR (INTL)`: `MultiSub` accompagné d'un marqueur français explicite
- `French Missing (INTL)`: aucune preuve fiable de piste audio ou de sous-titres français

## Utilisation avec les indexeurs francophones

Sur un indexeur francophone, `MULTi` indique généralement qu'une piste française est présente. Utilisez donc les CF standards `French MULTi` et `French Missing`, accompagnés des CF communs correspondant à vos préférences.

Les CF `INTL` ne sont pas nécessaires dans ce cas. `French VFQ` peut recevoir un score fortement négatif si le doublage québécois ou canadien n'est pas souhaité.

## Utilisation avec les indexeurs internationaux

Sur un indexeur international, `MULTi` peut désigner n'importe quelle combinaison de langues, par exemple `VO + DE + ES`, sans aucune piste française. De même, `MultiSub` annonce plusieurs sous-titres sans garantir la présence du français.

Les CF `INTL` demandent donc une preuve supplémentaire sous la forme d'une team FR connue ou d'un marqueur français explicite. Une team seule ne valide jamais la langue. Par exemple, `Batwheels.S01E23.1080p.MAX.WEB-DL.H.264-VARYG` reste `French Missing (INTL)` puisqu'il ne contient ni `MULTi`, ni `MultiSub`, ni marqueur français.

Les teams sont récupérées automatiquement depuis les regex portant les tags `French` et `Release Group`. Pour `MULTi` comme pour `MultiSub`, les chemins `Team FR` et `Marker FR` sont mutuellement exclusifs afin d'éviter le double score. Une release `MULTi.VFF-TeamFR` utilise uniquement `French MULTi + Marker FR (INTL)`, tandis qu'une release `MultiSub.FR-TeamFR` utilise uniquement `French MultiSub + Marker FR (INTL)`.

Pour adapter un profil aux indexeurs internationaux:

1. Retirez `French MULTi`
2. Retirez `French Missing`
3. Ajoutez les cinq CF `INTL` au profil
4. Conservez les scores de `French Original`, `French Original Marker`, `French VF`, `French VOSTFR` et `French VFQ`

### Exemple de scoring

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

Les deux CF `MultiSub` ne se cumulent pas. La présence d'un marqueur français explicite neutralise le chemin `Team FR`, chaque preuve fiable peut donc recevoir directement le même score que `French VOSTFR`.

Ces valeurs sont illustratives. Vous pouvez conserver l'échelle de votre profil tant que l'ordre relatif reste cohérent et que la somme maximale ne dépasse pas son score maximal.

Si `French VFQ` est banni, une release `MULTi.VFQ` sera rejetée même si elle matche `French MULTi + Marker FR (INTL)`.

## Utilisation avec un mix d'indexeurs FR et INTL

Deux méthodes sont possibles lorsque la même instance Radarr ou Sonarr reçoit des résultats provenant d'indexeurs francophones et internationaux.

### Option 1: conserver les CF standards

Conservez `French MULTi` et `French Missing` dans vos profils. Ajoutez ensuite dans les Release Profiles une restriction propre à chaque indexeur international afin de refuser les releases qui ne fournissent aucune preuve explicite de français.

Ajoutez la regex suivante dans **Must Contain**, puis limitez le Release Profile aux indexeurs internationaux concernés:

```regex
/(?:\b(?:VF(?:F|I|Q|B|C)?2?|VQ|VO(?:F|FR|Q)|TRUE[ ._-]?FR(?:ENCH)?|FRENCH|FRAN(?:C|Ç)AIS|FRE|FRA|VOST(?:[ ._-]*FR(?:E|A)?|F)?|SUB[ ._-]?(?:FR|FRA|FRE|FRENCH)|(?:FR|FRENCH)[ ._-]?SUBS?|ST[ ._-]?FR|FRENCH[ ._-]?CANADIAN|CANADIAN[ ._-]?FRENCH|QU(?:E|É)B(?:E|É)COIS|MULTI[ ._-]+CA[N]?|\d{3,4}p[ ._-]+CA[N]?|MULTI(?:[ ._+&\/-]+[A-Z]{2,3}){0,6}[ ._+&\/-]+FR|FR(?:[ ._+&\/-]+[A-Z]{2,3})+|(?:[A-Z]{2,3}[ ._+&\/-]+)+FR)\b|\[FR\])/i
```

Elle reconnaît notamment `VF`, `VFF`, `VFI`, `VFB`, `VFQ`, leurs variantes numérotées, `TRUEFRENCH`, `VOF`, `VOQ`, `VOSTFR`, `SUBFRENCH`, `FRSUBS`, `MULTI.FR`, `MULTI.CAN`, `FR+EN`, `EN+FR` et `[FR]`. Elle n'accepte volontairement pas un simple `MULTI`, puisqu'il ne prouve pas la présence du français sur un indexeur international.

Les marqueurs québécois sont inclus parce qu'ils prouvent bien la présence d'une piste française. Ils restent ensuite soumis au score de `French VFQ`. Si ce CF est banni, une release `MULTI.VFQ` ou `MULTI.CAN` sera toujours rejetée.

Cette méthode est simple si vous utilisez peu d'indexeurs internationaux, mais chaque restriction doit être associée au bon indexeur et maintenue séparément.

### Option 2: utiliser les CF INTL

Utilisez les CF `INTL` pour tous les résultats et retirez `French MULTi` ainsi que `French Missing` des profils concernés. Pour chaque indexeur francophone, activez dans Prowlarr l'option **Replace MULTi by another language in release name**, puis sélectionnez `MULTi.FRENCH`. Laissez cette option désactivée sur les indexeurs internationaux.

![Réglage Prowlarr pour convertir MULTi en MULTi.FRENCH sur un indexeur francophone](image/Prowlarr%20Multi.png)

Prowlarr transmet alors `MULTi.FRENCH` à Radarr ou Sonarr pour les indexeurs francophones. Certains indexeurs utilisent la forme `MULTi FRENCH` sans point, également reconnue. Ces formes constituent un marqueur français explicite et sont validées par `French MULTi + Marker FR (INTL)`.

Un `MULTi` provenant d'un indexeur international reste inchangé et doit toujours être accompagné d'une team FR connue ou d'un marqueur français explicite. Cette seconde méthode offre une logique unique dans les profils et évite de maintenir une restriction différente pour chaque indexeur international. Elle est recommandée lorsque les deux types d'indexeurs sont utilisés régulièrement.

## Détection des langues

`French MULTi` reconnaît notamment:

```text
MULTI
MULTI.FR
MULTI.FRE
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

`French VF` reconnaît les marqueurs `VF`, `VFF`, `VFI`, `TRUEFRENCH`, `FRENCH`, `FRANCAIS`, `FRANÇAIS`, `FR`, `FRE` et `FRA`. Les trois codes courts doivent être entourés par le début ou la fin du titre, un point, un tiret ou un espace.

`French VOSTFR` reconnaît notamment `VOST`, `VOSTFR`, `SUBFR`, `SUBFRENCH` et `FRENCH SUBS`. Après téléchargement, une présence confirmée de sous-titres français est normalisée sous ce même CF, qu'elle provienne initialement de `VOSTFR` ou de `MultiSub`.

`French VFQ` reconnaît notamment `VFQ`, `VFQ2`, `VQ`, `MULTI.CA`, `FRENCH.CA`, `FRENCH CANADIAN`, `CANADIAN FRENCH` et `QUEBECOIS`.

## Persistance après import

Les presets de renommage Radarr et Sonarr ajoutent les informations MediaInfo suivantes avant le release group:

```text
{MediaInfo AudioLanguagesAll}{(MediaInfo SubtitleLanguagesAll)}
```

`AudioLanguagesAll` conserve toutes les langues audio détectées, y compris l'anglais seul. Les parenthèses donnent un rôle clair au bloc de sous-titres sans ajouter les préfixes `[AUDIO]` et `[SUB]`. Elles ne sont ajoutées que lorsque des sous-titres sont détectés.

```text
[FR]                 audio français uniquement, aucun sous-titre détecté
[FR+EN]([FR])        audio français et anglais, sous-titres français
[EN+FR]([EN+FR])     ordre différent, français présent dans les deux blocs
[JA]([FR+EN])        audio japonais, sous-titres français et anglais
[EN+JA]([EN])        aucune preuve de français
```

La convention est simple: `[...]` sans parenthèses représente l'audio, tandis que `([...])` entre parenthèses représente les sous-titres. Les regex audio vérifient donc que `[` n'est pas précédé de `(` et que `]` n'est pas suivi de `)`. La détection ne dépend pas de ce qui vient après un bloc audio valide, ni de l'ordre des codes de langue.

Ces formes persistées sont intégrées directement aux regex existantes:

- `French MULTi` reconnaît un bloc audio contenant `FR` et au moins une autre langue, comme `[FR+EN]` ou `[EN+FR]`, lorsqu'il n'est ni précédé de `(`, ni suivi de `)`
- `French MULTi + Marker FR (INTL)` reconnaît la même preuve MediaInfo multilingue
- `French VF` reconnaît le bloc audio français seul `[FR]` lorsqu'il n'est ni précédé de `(`, ni suivi de `)`
- `French VOSTFR` reconnaît `FR` parmi les sous-titres, comme `([FR])`, `([FR+EN])` ou `([EN+FR])`

Après analyse, `French MULTi + Team FR (INTL)` exclut cette preuve MediaInfo. Le fichier conserve ainsi uniquement `French MULTi + Marker FR (INTL)`, sans double score entre les chemins `Team FR` et `Marker FR`.

Il n'est pas nécessaire de reconnaître `French MultiSub + Marker FR (INTL)` après import, puisque `French VOSTFR` est reconnu et scoré avec la même échelle. L'un des deux suffit à conserver le score, même si le Custom Format est différent.

Toutes les conditions `Release Title` de ces CF restent ainsi `Required`. Avant téléchargement, les regex analysent le titre de l'indexeur. Après analyse du fichier, les blocs MediaInfo maintiennent la bonne classification et empêchent `French Missing` ou `French Missing (INTL)` de réapparaître.
