OPINIONS = [

# ______________________________________________________________________________

  # WRITING AN OPINION

  # Everything should be IN ENGLISH

  # 1 - Find the opinion in the list below (or add it at the end).

  # 2 - Correct the name (name: ...) if needed. Max 140 characters.

  # 3 - Write a description (or copy it from an article), about 350 characters.
  #     You can write it on several lines, it doesn't change anything.

  # 4 - Create the playlist by filling the 'tracks' array.
  #     For each track to add, you need to create a new hash {} (copy the previous one).
  #     In the hash, there's 4 keys: 'youtube', 'genre', 'name', 'artist'.
  #     Each value is a string "...".
  #     The value for the 'youtube' key is the youtube id, find it on Youtube directly (11 numbers).
  #     The value of genre should be: classical, rock, jazz, rap, folk, pop, electro or metal?
  #     Then fill the name of the song and the name of the artist.

  # ! Be carreful to not forget comas at the end of each data !

  # 5 - When everything is ready, change the value of 'ready' key to true (false by default).

  # 6 - Run db:seed and check if everything works in the website, especially if all videos play.

# ______________________________________________________________________________


  # OPINION 1 - Rap - Rap lyrics are so poor, they just mumble!
  # ___________________________________________________________
  {
    ready: true,
    name: "Rap lyrics are so poor, they just mumble!",
    description:
    "Why is rap so bad? This is an opinion.
    Rap Music is bad because people have preferences of music.
    Why is there no originality?
    This question implies a falsehood.
    There is plenty of originality in Rap Music.
    Perhaps everyone sounds similar because you’re not a close listener of the music.
    You have to become use to hearing it.",
    tracks: [
      { youtube: 'G52x5zyLAgY',
        genre: 'rap',
        name: "Crépuscule d'apocalyspe",
        artist: 'Dooz Kawa'
      },
      { youtube: 'akFZtK0GVU4',
        genre: 'rap',
        name: 'Thé à la menthe',
        artist: 'La caution'
      },
      { youtube: 'QsNft5ftYSs',
        genre: 'rap',
        name: 'Fenêtre sur rue',
        artist: 'Hugo TSR'
      },
      { youtube: 'FcHblRlbijc',
        genre: 'rap',
        name: 'Want it back',
        artist: 'Guts'
      },
      { youtube: '2b9xNT7R1So',
        genre: 'rap',
        name: 'Toussa Toussa',
        artist: 'Disiz La Peste'
      },
      { youtube: 'iAE1vUTZ4-Y',
        genre: 'rap',
        name: 'Me faire la belle',
        artist: 'Dooz Kawa'
      },
      { youtube: '4o3RnLxzExo',
        genre: 'rap',
        name: 'Chewing gum',
        artist: 'Odezenne'
      },
    ]
  },

  # OPINION 2 - Jazz - Le jazz, c'est aussi ennuyeux que la musique d'ascenseur
  # ___________________________________________________________
  {
    ready: false,
    name: "Le jazz, c'est aussi ennuyeux que la musique d'ascenseur",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 3 - Classique - L'opéra, ce ne sont que des histoires tristes et datéés
  # ___________________________________________________________
  {
    ready: false,
    name: "L'opéra, ce ne sont que des histoires tristes et datéés",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 4 - Rock - Le rock, c'est toujours les mêmes trois accords
  # ___________________________________________________________
  {
    ready: false,
    name: "Le rock, c'est toujours les mêmes trois accords",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 5 - Classique - Le classique, il faut s'y connaître pour apprécier
  # ___________________________________________________________
  {
    ready: true,
    name: "Classical is inaudible unless you understand it perfectly.",
    description: "The formula for a boring classical concert usually comes down to its vibe, atmosphere and programming.
    I feel as though the dish being served cannot be too daring or risky.
    But when it is, it allows the players to unleash their talent upon the music. ",
    tracks: [
      { youtube: 'gqg3l3r_DRI',
        genre: 'classical',
        name: "Sabre Dance",
        artist: "Aram Khachaturian"
      },
      { youtube: 'mpgyTl8yqbw',
        genre: 'classical',
        name: "Pavane, op. 50",
        artist: "Gabriel Faure"
      },
      { youtube: 'XCBDlC0N8Rc',
        genre: 'classical',
        name: "The Carnival of the Animals, Aquarium",
        artist: "Camille Saint-Saëns"
      },
      { youtube: 'S-Xm7s9eGxU',
        genre: 'classical',
        name: "Gymnopédie n°1",
        artist: "Erik Satie"
      },
      { youtube: '7E-RTI-H2oI',
        genre: 'classical',
        name: "Concerto for Two Violins",
        artist: "Antonio Vivaldo"
      },
      { youtube: 'DUmq1cpcglQ',
        genre: 'classical',
        name: "Dance of the Knights",
        artist: "Sergei Prokofiev"
      },
      { youtube: '3X9LvC9WkkQ',
        genre: 'classical',
        name: "Hungarian Dance n°5",
        artist: "Johannes Brahms"
      },
      { youtube: 'zVTR-9HyjPA',
        genre: 'jazz',
        name: "Nocturnes, op. 9",
        artist: "Frédéric Chopin revisited by Jacques Loussier"
      },
      { youtube: 'ZL-CVV616nI',
        genre: 'jazz',
        name: "Humoresque",
        artist: "Antonín Dvořák revisited by Art Tatum"
      },
    ]
  },

  # OPINION 6 - Rap - Le rap, c'est par des mecs, pour des mec
  # ___________________________________________________________
  {
    ready: false,
    name: "Le rap, c'est par des mecs, pour des mecs",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 7 - Jazz - Le jazz c'est des mecs qui jouent n'importe comment sous prétexte d'improvisation
  # ___________________________________________________________
  {
    ready: false,
    name: "Le jazz c'est des mecs qui jouent n'importe comment sous prétexte d'improvisation",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 8 - Jazz - Le jazz n’a pas changé depuis les années 40
  # ___________________________________________________________
  {
    ready: false,
    name: "Le jazz n’a pas changé depuis les années 40",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 9 - Pop - La pop, c'est de la musique 'girly'
  # ___________________________________________________________
  {
    ready: false,
    name: "La pop, c'est de la musique 'girly'",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 10 - Rock -Le rock n’a pas changé depuis les années 70
  # ___________________________________________________________
  {
    ready: false,
    name: "Le rock n’a pas changé depuis les années 70",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },

  # OPINION 11 - Genre ? -Name ?
  # ___________________________________________________________
  {
    ready: false,
    name: "",
    description: "",
    tracks: [
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
      { youtube: '',
        genre: '',
        name: "",
        artist: ""
      },
    ]
  },
]

puts '-------------------------------------------------------------------------'
puts 'CLEANING DATABASE'

Vote.destroy_all
Track.destroy_all
Opinion.destroy_all
Genre.destroy_all
User.destroy_all

USERS_COUNT = 48
VOTES_BY_TRACK_MIN = 0
VOTES_BY_TRACK_MAX = 99

puts '-------------------------------------------------------------------------'
puts 'CREATING DEMO USERS AND ADMINS'

user = User.create!(
    email: 'user@mail.com',
    password: 'aaaaaa',
    username: 'Peter Jack',
    birth_year: 1987,
    city: 'Lyon',
    photo: 'avatar_1.png',
    admin: false
)

puts  "user@mail.com  | aaaaaa (ID: #{user.id})"

admin = User.create!(
    email: 'admin@mail.com',
    password: 'aaaaaaa',
    username: 'Jane Doe',
    birth_year: 1987,
    city: 'Lyon',
    photo: 'avatar_2.png',
    admin: true
)

puts  "admin@mail.com | aaaaaa (ID: #{admin.id})"

puts '-------------------------------------------------------------------------'
puts "CREATING #{USERS_COUNT} USERS"

USERS_COUNT.times do |count|
  User.create!(
    email: Faker::Internet.email << rand(0..9).to_s,
    password: 'azerty',
    username: Faker::Internet.username,
    birth_year: 1970,
    city: Faker::Address.city,
    photo: "avatar_#{count + 2}.png",
    admin: false
  )
  print '#'
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING GENRES'

genre = Genre.create(
  name: 'classical',
  photo: ['genres/classical1.jpg', 'genres/classical2.jpg', 'genres/classical3.jpg']
)
print genre.name

genre = Genre.create(
  name: 'electro',
  photo: ['genres/electro1.jpg', 'genres/electro2.jpg', 'genres/electro3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'rock',
  photo: ['genres/rock1.jpg', 'genres/rock2.jpg', 'genres/rock3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'jazz',
  photo: ['genres/jazz1.jpg', 'genres/jazz2.jpg', 'genres/jazz3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'rap',
  photo: ['genres/rap1.jpg', 'genres/rap2.jpg', 'genres/rap3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'folk',
  photo: ['genres/folk1.jpg', 'genres/folk2.jpg', 'genres/folk3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'pop',
  photo: ['genres/pop1.jpg', 'genres/pop2.jpg', 'genres/pop3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'metal',
  photo: ['genres/metal1.jpg', 'genres/metal2.jpg', 'genres/metal3.jpg']
)
print ', ' << genre.name

puts ''

puts '-------------------------------------------------------------------------'
puts "CREATING OPINIONS, RELATED TRACKS AND #{VOTES_BY_TRACK_MIN} TO #{VOTES_BY_TRACK_MAX} VOTES BY TRACK"
puts '-------------------------------------------------------------------------'

OPINIONS.each do |opinion|
  if opinion[:ready]
    user = User.order('RANDOM()').first
    opinion_instance = Opinion.create!(
      name: opinion[:name],
      description: opinion[:description],
      creator_id: user.id
    )
    opinion_instance.id < 10 ? space = ' ' : space = ''
    puts "\"" << opinion_instance.name.upcase << "\""
    opinion[:tracks].each_with_index do |track, index|
      user = User.order('RANDOM()').first
      track[:genre].blank? ? genre_id = nil : genre_id = Genre.where(name: track[:genre]).first.id
      track_instance = Track.create!(
        name: track[:artist] << ' - ' << track[:name],
        artist: track[:artist],
        photo: "https://i.ytimg.com/vi/#{track[:youtube]}/mqdefault.jpg",
        youtube_id: track[:youtube],
        creator_id: user.id,
        genre_id: genre_id,
        opinion_id: opinion_instance.id,
        approved: rand(-1..1)
      )
      print (index + 1).to_s << ' - ' << track_instance.name
      rand(VOTES_BY_TRACK_MIN..VOTES_BY_TRACK_MAX).times do
        user = User.order('RANDOM()').first
        vote = Vote.create!(
          user_id: user.id,
          track_id: track_instance.id
        )
      end
      puts ''
    end
    puts ''
  end
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'SEED DONE'

puts "Users:    #{User.count}"
puts "Opinions: #{Opinion.count}"
puts "Tracks:   #{Track.count}"
puts "Votes:    #{Vote.count}"
