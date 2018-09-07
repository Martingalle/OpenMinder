OPINIONS = [

# ______________________________________________________________________________

  # WRITING AN OPINION

  # Everything should be IN ENGLISH

  # 1 - Find the opinion in the list below (or add it at the end).

  # 2 - Correct the name (name: ...) if needed. Max 140 characters.

  # 3 - Add the main genre of the opinion in 'genre'.

  # 4 - Write a description (or copy it from an article), about 350 characters.
  #     You can write it on several lines, it doesn't change anything.

  # 5 - Create the playlist by filling the 'tracks' array.
  #     For each track to add, you need to create a new hash {} (copy the previous one).
  #     In the hash, there's 4 keys: 'youtube', 'genre', 'name', 'artist'.
  #     Each value is a string "...".
  #     The value for the 'youtube' key is the youtube id, find it on Youtube directly (11 numbers).
  #     The value of genre should be: classical, rock, jazz, hip hop, folk, pop, electronic or metal?
  #     Then fill the name of the song and the name of the artist.

  # ! Be carreful to not forget comas at the end of each data !

  # 6 - When everything is ready, change the value of 'ready' key to true (false by default).

  # 7 - Run db:seed and check if everything works in the website, especially if all videos play.

# ______________________________________________________________________________


  # OPINION 1 - Rap - Rap lyrics are so poor, they just mumble!
  # ___________________________________________________________
  {
    ready: true,
    name: "Rap lyrics are so poor, they just mumble!",
    genre: 'hip hop',
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
        genre: 'hip hop',
        name: "Crépuscule d'apocalyspe",
        artist: 'Dooz Kawa'
      },
      { youtube: 'akFZtK0GVU4',
        genre: 'hip hop',
        name: 'Thé à la menthe',
        artist: 'La caution'
      },
      { youtube: 'QsNft5ftYSs',
        genre: 'hip hop',
        name: 'Fenêtre sur rue',
        artist: 'Hugo TSR'
      },
      { youtube: 'FcHblRlbijc',
        genre: 'hip hop',
        name: 'Want it back',
        artist: 'Guts'
      },
      { youtube: '2b9xNT7R1So',
        genre: 'hip hop',
        name: 'Toussa Toussa',
        artist: 'Disiz La Peste'
      },
      { youtube: 'iAE1vUTZ4-Y',
        genre: 'hip hop',
        name: 'Me faire la belle',
        artist: 'Dooz Kawa'
      },
      { youtube: '4o3RnLxzExo',
        genre: 'hip hop',
        name: 'Chewing gum',
        artist: 'Odezenne'
      },
    ]
  },

  {
    ready: true,
    name: "Jazz is as boring as elevator music",
    genre: 'jazz',
    description: "While all jazz does not have a vocalist, there is still a “story” that can be heard, a rise, climax and a fall.
    Unlike some modern music, and so it definitely takes some time to appreciate.
    With jazz, no two pieces are the same, and so you cannot get bored listening to it.",
    tracks: [
      { youtube: 'qNcPwrfK9tY',
        genre: 'jazz',
        name: "Kind of Blue",
        artist: "Miles Davis"
      },
      { youtube: 'll3CMgiUPuU',
        genre: 'jazz',
        name: "John Coltrane",
        artist: "A Love Supreme"
      },
      { youtube: 'vi0vIOd8XpU',
        genre: 'jazz',
        name: "Frank Sinitra",
        artist: "The Very Best Of Frank Sinatra"
      },
      { youtube: 'tM0k7TPxX3I',
        genre: 'jazz',
        name: "Sonny Rollins",
        artist: "Saxophone Colossus"
      },
      { youtube: 'dlee09qmnv4',
        genre: 'jazz',
        name: "Weather Report",
        artist: "Heavy Weather"
      },
      { youtube: 'iC1XYHafUuM',
        genre: 'jazz',
        name: "The Very Thought of You",
        artist: "Nat King Cole"
      },
      { youtube: 'rITUzQUfh_M',
        genre: 'jazz',
        name: "Big Band Machine",
        artist: "Buddy Rich"
      },
      { youtube: 'sHcneaZIvVM',
        genre: 'jazz',
        name: "Moonglow",
        artist: "Benny Goodman"
      },
    ]
  },

  # OPINION 3 - Classique - L'opéra, ce ne sont que des histoires tristes et datéés
  # ___________________________________________________________
  {
    ready: true,
    name: "Opera music tells old and sad stories",
    genre: 'classical',
    description: "You probably know the story of La Traviata, Carmen or Tristan and Isolde.
    For sure, you can consider these stories to be tragic and old, but it's only because of the time they take place!
    The performers' act and singing talents are carrying universal emotions we feel whatever the century we live
    and easily identify with.",
    tracks: [
      { youtube: 'pyBv7CnsH58',
        genre: 'classical',
        name: "Bliss",
        artist: "Opera Australia"
      },
      { youtube: 'luXlm5mUocc',
        genre: 'classical',
        name: "The Exterminating Angel",
        artist: "Thomas Adès"
      },
      { youtube: 'AlUHKHLk_VU',
        genre: 'classical',
        name: "Dr Atomic",
        artist: "John Adams"
      },
      { youtube: 'VVz-QAJJqig',
        genre: 'classical',
        name: "The Turn of The Screw",
        artist: "Valentina Carrasco"
      },
    ]
  },

  # OPINION 4 - Rock - Le rock, c'est toujours les mêmes trois accords
  # ___________________________________________________________
  {
    ready: true,
    name: "Rock is always the same three music chords",
    genre: 'rock',
    description: "There’s an old joke that asks:
    'What’s the difference between a rock guitarist and a jazz guitarist?'
    Answer: 'A rock guitarist plays three chords to a million people and a jazz guitarist plays a million chords to three people!'",
    tracks: [
      { youtube: 'NmfzWpp0hMc',
        genre: 'rock',
        name: "CAFO",
        artist: "Animals As Leaders"
      },
      { youtube: 'IZBlqcbpmxY',
        genre: 'rock',
        name: "Voodoo Child",
        artist: "Jimi Hendrix"
      },
      { youtube: 'sI7XiJgt0vY',
        genre: 'rock',
        name: "Eruption",
        artist: "Van Halen"
      },
      { youtube: 'Dj7MVn3Wagg',
        genre: 'rock',
        name: "The Mystical Potato Head Groove Thing",
        artist: "Joe Satriani"
      },
    ]
  },

  # OPINION 5 - Classique - Le classique, il faut s'y connaître pour apprécier
  # ___________________________________________________________
  {
    ready: true,
    name: "Classical music is unlistenable unless you understand it perfectly",
    genre: 'classical',
    description: "The formula for a boring classical concert usually comes down to its vibe, atmosphere and programming.
    I feel as though the dish being served cannot be too daring or risky.
    But when it is, it allows the players to unleash their talent upon the music.",
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
    ready: true,
    name: "Rap music is mainly made by guys, for guys",
    genre: 'hip hop',
    description: "Since its beginnings in 70s New York, hip-hop has had a complicated history with women. Or rather, very little history at all.
    It took the arrival of Lauryn Hill and Jean Grae in the mid-90s to offer an alternative to the tomboy/ temptress tropes.",
    tracks: [
      { youtube: 'Wji4b2jjYOk',
        genre: 'hip hop',
        name: "Icy Grl",
        artist: "Saweetie"
      },
      { youtube: 'PEGccV-NOm8',
        genre: 'hip hop',
        name: "Bodak Yellow",
        artist: "Cardi B"
      },
      { youtube: 'PN9ToyBbb_g',
        genre: 'hip hop',
        name: "Clap",
        artist: "Ms Banks"
      },
      { youtube: 'pOTfQ4NjIKs',
        genre: 'hip hop',
        name: "Poppin",
        artist: "Rico Nasty"
      },
      { youtube: 'c5n1wcFm9is',
        genre: 'hip hop',
        name: "Crayons",
        artist: "CupcakKe"
      },
      { youtube: 'eSX7LmESZQ4',
        genre: 'hip hop',
        name: "Telefone",
        artist: "Noname"
      },
      { youtube: 'tQ8xAeVp9qQ',
        genre: 'hip hop',
        name: "For Everybody",
        artist: "Kash Doll"
      },
      { youtube: 'QGIDU7V3osQ',
        genre: 'hip hop',
        name: "Sad",
        artist: "Kodie Shane"
      },
      { youtube: '6uRNpEynpcw',
        genre: 'hip hop',
        name: "Build You Up",
        artist: "Kamaiyah"
      },
    ]
  },

  # OPINION 7 - Jazz - Le jazz c'est des mecs qui jouent n'importe comment sous prétexte d'improvisation
  # ___________________________________________________________
  {
    ready: true,
    name: "Jazz is a band of guys playing like whatever because jazz is impro",
    genre: 'jazz',
    description: "Improvisation is a key ingredient of jazz that sets it apart from other genres: it requires you to really listen and feel the music!
    Revered jazz trumpeter Miles Davis put it this way: 'I will play it first and tell you what it is later.",
    tracks: [
      { youtube: 'DiNzXslovVk',
        genre: 'jazz',
        name: "Savoy Blues",
        artist: "Louis Armstrong"
      },
      { youtube: 'TrytKuC3Z_o',
        genre: 'jazz',
        name: "Satin Doll",
        artist: "Duke Ellington "
      },
      { youtube: 'n4NLY8vi5Q8',
        genre: 'jazz',
        name: "Pipeline",
        artist: "Bill Frisell"
      },
      { youtube: 'DNbD1JIH344',
        genre: 'jazz',
        name: "Lonely Woman",
        artist: "Ornette Coleman"
      },
    ]
  },

  # OPINION 8 - Jazz - Le jazz n’a pas changé depuis les années 40
  # ___________________________________________________________
  {
    ready: true,
    name: "Jazz has not change since the 40s",
    genre: 'jazz',
    description:
    "Jazz is outdated music for outdated people. The sound and the genre did not change and it's anachronic to listen to jazz today",
    tracks: [
      { youtube: 'tWZdrBzgou8',
        genre: 'jazz',
        name: "Chocolate Chip",
        artist: 'Miles Davis'
      },
      { youtube: 'LxW8dyxvhNU',
        genre: 'jazz',
        name: 'Frankenstein',
        artist: 'Marcus Miller'
      },
      { youtube: 'U8NFS8WXfCI',
        genre: 'jazz',
        name: 'Re run home',
        artist: 'Kamasi Washington'
      },
      { youtube: 'BvOZVPbTNMU',
        genre: 'jazz',
        name: 'Medina',
        artist: 'Kamaal Williams'
      },
      { youtube: 'VsHT2PUysmw',
        genre: 'jazz',
        name: 'Il l a fait avec sa soeur',
        artist: 'Chromb!'
      },
      { youtube: 'C8lX9sOLDvs',
        genre: 'jazz',
        name: 'Mista President',
        artist: 'The Souljazz Orchestra'
      },
      { youtube: '1q2DrOv_swE',
        genre: 'jazz',
        name: "The Creeper | Sofar London",
        artist: "Binker & Moses"
      },
      { youtube: 'bmjFJd6q4Es',
        genre: 'jazz',
        name: "Boreal Forest",
        artist: "Mammal Hands"
      },
      { youtube: '-UtAV_azaBc',
        genre: 'jazz',
        name: "Hopopono",
        artist: "GoGo Penguin"
      },
      { youtube: '65UQSMPBCuo',
        genre: 'jazz',
        name: "BLACK SKIN, BLACK MASKS",
        artist: "SHABAKA HUTCHINGS"
      },
      { youtube: 'TnkjcS_yTfA',
        genre: 'jazz',
        name: "Live | North sea jazz festival",
        artist: "Shabaka and the Ancestors"
      },
      { youtube: 'lZmjxrfqdOo',
        genre: 'jazz',
        name: "A.R.E. Project",
        artist: "A.R.E. Project"
      },
    ]
  },

  # OPINION 9 - Pop - La pop, c'est de la musique 'girly'
  # ___________________________________________________________
  {
    ready: true,
    name: "Pop music is cheesy!",
    genre: 'pop',
    description: "Well, pop music smells like lollipop and cotton candy more than like cheese, doesn't it?
    Here are a few great pop songs, not cheesy, but still glittery!
    Please add your own tracks if you have some inspiration!",
    tracks: [
      { youtube: 'PIb6AZdTr-A',
        genre: 'pop',
        name: "Girls Just Want To Have Fun",
        artist: "Cindy Lauper"
      },
      { youtube: 'ggWyUEuGcWY',
        genre: 'pop',
        name: "Leave (Get Out)",
        artist: "JoJo"
      },
      { youtube: 'Ju8Hr50Ckwk',
        genre: 'pop',
        name: "If I Ain't Got You",
        artist: "Alicia Keys"
      },
      { youtube: 'l5aZJBLAu1E',
        genre: 'pop',
        name: "It's raining men",
        artist: "The Weather Girls"
      },
      { youtube: 'ZyhrYis509A',
        genre: 'pop',
        name: "Barbie Girl",
        artist: "Aqua"
      },
      { youtube: 'YVkUvmDQ3HY',
        genre: 'pop',
        name: "Without me",
        artist: "Eminem"
      },
      { youtube: 'Kb-0Eo0Yk0o',
        genre: 'pop',
        name: "Untold Stories",
        artist: "Buju Banton"
      },
      { youtube: 'wflQ_0fkkog',
        genre: 'pop',
        name: "It's Not Enough",
        artist: "Johnny Thunders & The Heartbreakers"
      },
    ]
  },

  # OPINION 10 - Clasical - La flute traversière c'est pour les nerds classiques
  # ___________________________________________________________
  {
    ready: true,
    name: "Flute is for classical nerds only",
    genre: 'classical',
    description: "Yes it's true, sometimes the flute is played by little girl and guys doing drugs.
    But have you ever listened to rock flute?
    Forget the dreary medievalism or contemplative thoughtfulness.
    Here, the flute stands for pure, unfettered freedom and joy.",
    tracks: [
      { youtube: 'JhqyZeUlE8U',
        genre: 'rock',
        name: "Sure Shot",
        artist: "Beastie Boys"
      },
      { youtube: 'sYJhhKSXOBo',
        genre: 'rock',
        name: "Along comes Marie",
        artist: "The Association"
      },
      { youtube: 'MV0F_XiR48Q',
        genre: 'rock',
        name: "Hocus Pocus",
        artist: "Focus"
      },
      { youtube: 'uO-Dmpw_w2c',
        genre: 'rock',
        name: "Born To Wander",
        artist: "Rare Earth"
      },
      { youtube: 'AfON7S1mP2Q',
        genre: 'rock',
        name: "You’ve Got to Hide Your Love Away",
        artist: "Beatles"
      },
      { youtube: '3kcmwXUdDCE',
        genre: 'rock',
        name: "California Dreamin’",
        artist: "The Mamas and the Papas"
      },
      { youtube: 'p0PjECSyJ7w',
        genre: 'rock',
        name: "Going Up The Country",
        artist: "Canned Heat"
      },
      { youtube: '5WSulenOUb0',
        genre: 'rock',
        name: "My God",
        artist: "Jethro Tull"
      }
    ]
  },

  # OPINION 11 - Rock - Le Rock n'a pas changé depuis les années 70
  # ___________________________________________________________
  {
  ready: false,
    ready: true,
    name: "Rock has not changed since the 70s",
    genre: 'rock',
    description:
    "I still only listen to the tracks I used to listen to in the 70’s. If there are more recent bands around here, show me how rock they renew the genre.",
    tracks: [
      { youtube: 'sBzrzS1Ag_g',
        genre: 'rock',
        name: "The less I know the better",
        artist: 'Tame Impala'
      },
      { youtube: 'C-S_7A8skNw',
        genre: 'rock',
        name: 'To call my own',
        artist: 'They call me Rico'
      },
      { youtube: 'VisSLsjrFqY',
        genre: 'rock',
        name: 'Can t stand me now',
        artist: 'The Libertines'
      },
      { youtube: 'NQwsiIlIfH8',
        genre: 'rock',
        name: 'That look you give that guy',
        artist: 'Eels'
      },
      { youtube: '0ZECWpnQNQ',
        genre: 'rock',
        name: 'Videotape',
        artist: 'Radiohead'
      },
      { youtube: '_ROzwcezTHw',
        genre: 'rock',
        name: 'L oiseau',
        artist: 'Feu Chatterton!'
      },
    ]
  },
   # OPINION 12 - Jazz - Le jazz c'est des mecs qui jouent n'importe comment sous prétexte d'improvisation
  # ___________________________________________________________
  {
    ready: true,
    name: "Jazz is noisy music",
    genre: 'jazz',
    description:
    "Jazz is mostly high pitched saxophone or trumpet notes blown into your ears",
    tracks: [
      { youtube: 'tSv04ylc6To',
        genre: 'jazz',
        name: "Kokoroko",
        artist: 'Abusey Junction'
      },
      { youtube: 'I_3cR-MDC3g',
        genre: 'jazz',
        name: 'San Lorenzo',
        artist: 'Pat Metheny Group'
      },
      { youtube: 'WLiRqplwG_U',
        genre: 'jazz',
        name: 'Think of You',
        artist: 'Terrace Martin'
      },
      { youtube: 'QUMuDWDVd20',
        genre: 'jazz',
        name: 'Turiya And Ramakrishna',
        artist: 'Alice Coltrane'
      },
      { youtube: '4-lIg4hH31c',
        genre: 'jazz',
        name: 'Jackson reef',
        artist: 'Nils Petter Molvær'
      },
      { youtube: 'NBQkHTPV_C8',
        genre: 'jazz',
        name: 'Smokes gets in your eyes',
        artist: 'Miles Davis'
      },
    ]
  },
  # OPINION 13 - electronic - Electronic music is only dancefloor oriented, there is no emotions
  # ___________________________________________________________

  {
    ready: true,
    name: "Electronic music is only dancefloor oriented, there is no emotions",
    genre: 'electro',
    description:
    "I feel like all electro music tracks are made to sound good on a club soundsystem. The only thing that matters to the artists and the public is the strong bass.",
    tracks: [
      { youtube: 'vZAajrxvDs4',
        genre: 'electro',
        name: "But only love can break your heart",
        artist: 'Saint Etienne'
      },
      { youtube: 'dIwwjy4slI8',
        genre: 'electro',
        name: "Says",
        artist: 'Nils Frahm'
      },
      { youtube: 'UpiqXuNU7I',
        genre: 'electro',
        name: 'The sunrise in her eyes',
        artist: 'Route 8'
      },
      { youtube: 'Dzrw52pTpso',
        genre: 'electro',
        name: 'Bye Bye Macadam',
        artist: 'Rone'
      },
      { youtube: 'AWIqXzvX-U',
        genre: 'electro',
        name: 'Rhubarb',
        artist: 'Aphex Twin'
      },
      { youtube: 'U4U19zwFENs',
        genre: 'electro',
        name: 'La femme d argent',
        artist: 'Air'
      },
      { youtube: 'B--8LYoJ5WE&t',
        genre: 'electro',
        name: 'Woman to Woman',
        artist: 'Moomin'
      },
    ]
  },
  # OPINION 14 - electro - electro musicians can not play, their music is just a 8 minute loop of a few notes
  # ___________________________________________________________


  {
    ready: true,
    name: "Electro musicians can not play, their music is just a 8 minute loop of a few notes",
    genre: 'electro',
    description:
    "I truly feel all electro music tracks are a simple loop of a few notes, without any melody or choruses. I doubt most of electro music artists are actually able to really play an instrument. Prove me wrong ! :)",
    tracks: [
      { youtube: 'hGXfmPtbYmQ',
        genre: 'electro',
        name: "Peckham Rye",
        artist: 'Neue Grafik'
      },
      { youtube: '6WCKrOR5x6Q',
        genre: 'electro',
        name: 'Higher Love (guitar edit)',
        artist: 'Alankara and Jazzy D'
      },
      { youtube: 'vo1i-SAg09k',
        genre: 'electro',
        name: 'I need you so much',
        artist: 'Moodymann'
      },
      { youtube: 'U93Drq3G5oE',
        genre: 'electro',
        name: 'Relax and have an other spliff',
        artist: 'Kerri Chandler'
      },
      { youtube: 'UVIobrFP_N8',
        genre: 'electro',
        name: 'Une nuit au boxboys',
        artist: 'The Pilotwings'
      },
      { youtube: 'qzJ9PfuqkIQ',
        genre: 'electro',
        name: 'The shit baby',
        artist: 'Omar S'
      },
      { youtube: 'ezBF4h3ZVaM',
        genre: 'electro',
        name: 'Jazz Piece 2',
        artist: 'Dj Aamkmael'
      },
    ]
  },

  # OPINION 15 - hip hop - Hip hop's beatmaking is not interesting without lyrics
  # ___________________________________________________________

  {
    ready: true,
    name: "Hip hop's beatmaking is not interesting without lyrics",
    genre: 'hip hop',
    description:
    "The beat itself is not interesting. I don't even think beatmaking is a real form of art, it is just filling the void behind the lyrics.",
    tracks: [
      { youtube: 'fC3Cthm0HFU',
        genre: 'hip hop',
        name: "Last doughnut of the night",
        artist: 'J dilla'
      },
      { youtube: 'fHHSpfssBco',
        genre: 'hip hop',
        name: 'Respiration',
        artist: 'Mos Def'
      },
      { youtube: 'CybO7XtYpdU',
        genre: 'hip hop',
        name: '1983',
        artist: 'Flying Lotus'
      },
      { youtube: 'InFbBlpDTfQ',
        genre: 'hip hop',
        name: 'Midnight in a perfect world',
        artist: 'Dj shadow'
      },
      { youtube: 'aVjgRlto8PI',
        genre: 'hip hop',
        name: 'Kemuri',
        artist: 'Dj Krush'
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
VOTES_BY_TRACK_MAX = 29

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
    password: 'aaaaaa',
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
    username: Faker::Internet.username(5..8),
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
  photo: ['classical1.jpg', 'classical2.jpg', 'classical3.jpg', 'classical4.jpg', 'classical5.jpg', 'classical6.jpg']
)
print genre.name

genre = Genre.create(
  name: 'electro',
  photo: ['electro1.jpg', 'electro2.jpg', 'electro3.jpg', 'electro4.jpg', 'electro5.jpg', 'electro6.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'rock',
  photo: ['rock1.jpg', 'rock2.jpg', 'rock3.jpg', 'rock4.jpg', 'rock5.jpg', 'rock6.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'jazz',
  photo: ['jazz1.jpg', 'jazz2.jpg', 'jazz3.jpg', 'jazz4.jpg', 'jazz5.jpg', 'jazz6.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'hip hop',
  photo: ['hiphop1.jpg', 'hiphop2.jpg', 'hiphop3.jpg', 'hiphop4.jpg', 'hiphop5.jpg', 'hiphop6.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'folk',
  photo: ['folk1.jpg', 'folk2.jpg', 'folk3.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'pop',
  photo: ['pop1.jpg', 'pop2.jpg', 'pop3.jpg', 'pop4.jpg', 'pop5.jpg', 'pop6.jpg']
)
print ', ' << genre.name

genre = Genre.create(
  name: 'metal',
  photo: ['metal1.jpg', 'metal2.jpg', 'metal3.jpg']
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
      genre_id: Genre.where(name: opinion[:genre]).first.id,
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
        while Vote.where(user: user, track: track_instance).any?
          user = User.order('RANDOM()').first
        end
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
