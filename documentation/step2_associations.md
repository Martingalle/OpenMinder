# Step 2 - Associations

Lorsque la base de données est créée, les modèles peuvent être générés dans *Rails* afin de préciser les liens entre la base de données et le programme.

### Belongs_to et has_many

La première étape consiste à définir les liens directs entre deux modèles (ceux reliés par un trait dans la base de données).

Par exemple, un track appartient à un utilisateur (celui qui l'a créé), donc on ajoute `belongs_to :user` dans le modèle *Track*. En contrepartie, un utilisateur ayant pu créer plusieurs tracks, on ajoute `has_many :tracks` dans le modèle *User*.

Les modèles de bases ressemblent donc à :

```
Track
  belongs_to :user
  belongs_to :genre
  belongs_to :opinion
  has_many   :votes

Opinion
  belongs_to :user
  has_many   :tracks

Genre
  has_many :tracks

Vote
  belongs_to :user
  belongs_to :track

User
  has_many :opinions
  has_many :tracks
  has_many :votes
```

### Renommer les clés

Afin de faciliter la compréhension de la base de données, on peut modifier la clé externe (*foreign key*). Par exemple, on veut que dans un track l'utilisateur l'ayant créé ne s'appelle pas *user* mais s'appelle *creator*.

Cette action se fait en deux étapes. Premièrement, on modifie la base de données en renommant la colonne *user_id* de la table *tracks* par *creator_id*.

Afin de garder la connexion entre notre programme et la base de données, il faut reporter les modifications dans notre modèle *Track*. Dorénavant, un track appartient à un *creator*, mais il faut préciser à *Rails* que ce *creator* est en réalité un *user*, car *Rails* ne connaît pas la classe *Creator*. Cette précision se fait grâce à `class_name`.

```
Track
  belongs_to :creator, class_name: 'User'
```

Le problème c'est que nous avions indiqué qu'un utilisateur avait plusieurs tracks (`has_many :tracks`). *Rails* va donc aller voir dans la table *tracks* la colonne *user_id*. Or, il n'y a plus de colonne *user_id* dans la table *tracks* puisqu'on l'a renommée en *creator_id* ! Il faut donc préciser à *Rails* de ne pas chercher une colonne *user_id* mais une colonne *creator_id*, grâce à `foreign_key: :creator`.

```
User
  has_many :tracks, foreign_key: :creator
```

Nos modèles *Track* et *User* sont maintenant correctement liés.

### Créer les liens indirects

Maintenant que les liens directs entre deux modèles sont établis, il faut créer les liens indirects. Par exemple, un utilisateur peut ajouter des tracks (lien direct). Et un track appartient à un genre (lien direct). Donc, un utilisateur est rélié à des genres (lien indirect). Ce lien étant fait grâce aux tracks. On utilise `through` pour préciser cela.

```
User
  has_many :tracks, foreign_key: :creator
  has_many :genres, through: :tracks
```

*Rails* lit les associations dans l'ordre. Il faut donc bien associer les tracks au user avant de lui associer les genres, sinon *Rails* ne comprendra pas le `through: :tracks`.

Beaucoup d'associations peuvent être réalisées, il faut retenir seulement celles pertinentes pour les scénarios du programme.

### Différencier les interactions

L'interaction entre un utilisateur et un track peut être de deux niveaux. Dans le premier cas, l'utilisateur a crée le track. Dans le second, l'utilisateur a voté pour le track. Or nous souhaiterions pouvoir afficher d'une part tous les tracks ajoutés par un utilisateur et d'autre part tous les tracks pour lequel un utilisateur a voté.

Il faut donc renommer les variables pour les distinguer : `tracks_added` pour les tracks ajoutés par l'utilisateur et `tracks_voted` pour les tracks sur lesquels l'utilisateur a voté.

```
User
  has_many :tracks_added, foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes
```

Sauf qu'on a encore perdu *Rails* car il ne connait pas *tracks_added* ou *tracks_voted*. Ces deux cas se traitent différement.

Dans le cas de *tracks_added*, il s'agit d'un lien direct. *Rails* va aller chercher dans la table *tracks_added* et ne va pas la trouver. Il faut lui préciser qu'un *tracks_added* est un *track* avec `class_name`.

```
User
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes
```

Dans le cas de *tracks_voted* il s'agit d'un lien indirect. *Rails* va aller chercher dans la table *votes* les *track_voted_id* correspondant. Or dans la table des votes cette colonne s'appelle simplement *track_id*. On lui indique donc d'aller chercher cette donnée grâce à `source`.

```
User
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes, source: 'track'
```

Finalement, on souhaiterait ajouter les genres les plus partagés par l'utilisateur, qu'on peut récupérer à travers les tracks qu'il a ajouté. Normalement, il suffirait de faire :

```
User
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes, source: 'track'
  has_many :genres, through: :tracks
```

Mais *Rails* ne connait plus *tracks* dans nos associations. Il faut donc lui préciser que les genres s'obtiennent via les *tracks_added* :

```
User
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes, source: 'track'
  has_many :genres, through: :tracks_added
```

### Associations finales

```ruby
class User
  has_many :opinions_added, class_name: 'Opinion', foreign_key: :creator
  has_many :tracks_added, class_name: 'Track', foreign_key: :creator
  has_many :votes
  has_many :tracks_voted, through: :votes, source: 'track'
  has_many :genres, through: :tracks_added
  has_many :opinions_viewed, through: :tracks_voted, source: 'opinion'
end
```

```ruby
class Track
  belongs_to :creator, class_name: 'User'
  belongs_to :genre
  belongs_to :opinion
  has_many :votes
  has_many :users_voting, through: :votes,  source: 'user'
end
```

```ruby
class Opinion
  belongs_to :creator, class_name: 'User'
  has_many :tracks
  has_many :genres, through: :tracks
end
```

```ruby
class Genre
  has_many :tracks
  has_many :opinions, through: :tracks
end
```

```ruby
class Vote
  belongs_to :user
  belongs_to :track
end
```










