# Step 1 - Database

Dans un premier temps, on liste tous les éléments utiles au pogramme :

* un utilisateur
* un track
* un album
* un artiste
* un genre
* une opinion
* un vote
* etc.

Pour chacun de ces éléments, on regarde s'il est pertinent de créer un objet et une table associée. Notamment :

* est-ce que l'élément en question contient beaucoup d'informations ?
* est-ce que ces informations serviront à établir des liens entre les modèles ?
* est-ce qu'une même *instance* d'un élément sera réutilisée ?

Par exemple, concernant l'élément artiste, si :

* il y a beaucoup d'informations sur l'artiste (nom, photo, ville, âge, etc.) ;
* un même artiste sera lié à plusieurs autres éléments comme les tracks ou les albums ;
* les données d'un artiste seront utilisées pour créer des liens (par exemple comparer les villes des artistes à la ville d'un utilisateur pour lui afficher les artistes de sa région)...

... alors il serait pertinent de créer un modèle dédié.

Or, dans l'application *openminder*, un artiste ne peut apparaître deux fois (afin de favoriser la découverte), les données d'un artiste sont peu nombreuses et ne seront pas utilisées pour créer de liens. Nous ne créons donc pas de modèle dédié mais ajoutons un champ au modèle *track* pour le nom de l'artiste.

Les modèles seront ainsi :

```
user
track
genre
opinion
vote
```

Une fois que l'on a identifié les éléments qui auront des modèles dédiés, on crée les liens entre eux. Par exemple, un track est créé par un utilisateur, possède un genre musical, répond à une opinion, peut recevoir des votes. On peut donc tirer des lignes entre les modèles, en partant du track :

```
track | ------ | user
track | ------ | genre
track | ------ | opinion
track | ------ | votes
```

On évalue la quantité des éléments liés à un élément, en partant du point de vue de l'élément lui-même :

* un track possède un seul utilisateur (celui qui l'a créé) ;
* un track possède un seul genre musical ;
* un track répond à une seule opinion ;
* un track peut recevoir une infinité de votes (N).

On ajoute alors les quantités sur le schéma :

```
track | ------ 1 | user
track | ------ 1 | genre
track | ------ 1 | opinion
track | ------ N | votes
```

Le processus est répété pour chaque élément, ainsi :

```
track   | ------ 1 | user
track   | ------ 1 | genre
track   | ------ 1 | opinion
track   | ------ N | vote
genre   | ------ N | track
vote    | ------ 1 | user
vote    | ------ 1 | track
opinion | ------ 1 | user
opinion | ------ N | track
user    | ------ N | vote
user    | ------ N | track
user    | ------ N | opinion
```

On peut alors regrouper les différents liens :

```
track   | N ------ 1 | user
track   | N ------ 1 | genre
track   | N ------ 1 | opinion
track   | 1 ------ N | vote
vote    | N ------ 1 | user
opinion | N ------ 1 | user
```

Si une relation N-N apparait, il faut alors la découper en deux relations N-1 / 1-N. Ce cas n'est pas apparu dans *openminder*.

On peut enfin dessiner la database :

```
+--- (1) users (1)---(N) votes
|         (1)            (N)
|          |              |
|          |   +----------+
|          |   |
|         (N) (1)
|          tracks (N)---(1) genres
|         (N)
|          |
|          |
|         (1)
+-- (N) opinions
```

*Notes complémentaires*

Normalement, il faudrait borner les quantités de deux éléments liés. Par exemple, un track doit avoir absolument un utilisateur, et un seul. Mais à contrario, un utilisateur peut n'avoir créé aucun track, ou une infinité. On pourrait par contre autoriser l'existence d'un track sans genre lié, donc un minimum de 0 genre et un maximum de 1 genre pour les tracks.

Les relations sont donc (avec les bornes minimales et maximales) :

```
track   | 0-N ------ 1-1 | user
track   | 0-N ------ 0-1 | genre
track   | 0-N ------ 1-1 | opinion
track   | 1-1 ------ 0-N | vote
vote    | 0-N ------ 1-1 | user
opinion | 0-N ------ 1-1 | user
```

Cette précision permettra de mieux définir les règles de validation puisque, par défaut, un track ne pourra pas exister sans un genre rattaché (à cause de *belongs_to*). Si l'on veut que cela puisse se faire, il faudra le préciser dans le modèle. Cela influera aussi sur la notion de *dependant_destroy*.






