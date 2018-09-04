# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts ''
puts '-------------------------------------------------------------------------'
puts 'CLEANING DATABASE'

Vote.destroy_all
Track.destroy_all
Opinion.destroy_all
Genre.destroy_all
User.destroy_all

USERS_COUNT = 48
VOTES_BY_TRACK_MIN = 0
VOTES_BY_TRACK_MAX = 30

puts ''
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


puts ''
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

classical = Genre.create(
  name: 'classique',
  photo: ['genres/classical1.jpg', 'genres/classical2.jpg', 'genres/classical3.jpg']
)

electro = Genre.create(
  name: 'electro',
  photo: ['genres/electro1.jpg', 'genres/electro2.jpg', 'genres/electro3.jpg']
)

rock = Genre.create(
  name: 'rock',
  photo: ['genres/rock1.jpg', 'genres/rock2.jpg', 'genres/rock3.jpg']
)

jazz = Genre.create(
  name: 'jazz',
  photo: ['genres/jazz1.jpg', 'genres/jazz2.jpg', 'genres/jazz3.jpg']
)

rap = Genre.create(
  name: 'rap',
  photo: ['genres/rap1.jpg', 'genres/rap2.jpg', 'genres/rap3.jpg']
)

folk = Genre.create(
  name: 'folk',
  photo: ['genres/folk1.jpg', 'genres/folk2.jpg', 'genres/folk3.jpg']
)

pop = Genre.create(
  name: 'pop',
  photo: ['genres/pop1.jpg', 'genres/pop2.jpg', 'genres/pop3.jpg']
)

metal = Genre.create(
  name: 'metal',
  photo: ['genres/metal1.jpg', 'genres/metal2.jpg', 'genres/metal3.jpg']
)

chanson = Genre.create(
  name: 'chanson',
  photo: ['genres/chanson1.jpg', 'genres/chanson2.jpg', 'genres/chanson3.jpg']
)

opinions = [
  {
    name: "Rap lyrics are so poor, they just mumble!",
    description: "Why is rap so bad? This is an opinion. Rap Music is bad because people have preferences of music. Why is there no originality? This question implies a falsehood. There is plenty of originality in Rap Music. Perhaps everyone sounds similar because you’re not a close listener of the music. You have to become use to hearing it. Only until then will you be able to distinguish the different styles, which there are many of.",
    main_genre_id: rap.id,
    tracks: [
      { youtube: 'G52x5zyLAgY',
        genre: rap,
        name: "Crépuscule d'apocalyspe",
        artist: 'Dooz Kawa'
      },
      { youtube: 'akFZtK0GVU4',
        genre: rap,
        name: 'Thé à la menthe',
        artist: 'La caution'
      },
      { youtube: 'QsNft5ftYSs',
        genre: rap,
        name: 'Fenêtre sur rue',
        artist: 'Hugo TSR'
      },
      { youtube: 'FcHblRlbijc',
        genre: rap,
        name: 'Want it back',
        artist: 'Guts'
      },
      { youtube: '2b9xNT7R1So',
        genre: rap,
        name: 'Toussa Toussa',
        artist: 'Disiz La Peste'
      },
      { youtube: 'iAE1vUTZ4-Y',
        genre: rap,
        name: 'Me faire la belle',
        artist: 'Dooz Kawa'
      },
      { youtube: '4o3RnLxzExo',
        genre: rap,
        name: 'Chewing gum',
        artist: 'Odezenne'
      }
    ]
  }
  # {
  #   name: "La chanson française, depuis Brassens, c'est vraiment toujours la même chose",
  #   description: "",
  #   main_genre_id: chanson.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le jazz, c'est aussi ennuyeux que la musique d'ascenseur",
  #   description: "",
  #   main_genre_id: jazz.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "L'opéra, ce ne sont que des histoires tristes et datéés",
  #   description: "",
  #   main_genre_id: classical.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le rock, c'est toujours les mêmes trois accords",
  #   description: "",
  #   main_genre_id: rock.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le classique, il faut s'y connaître pour apprécier",
  #   description: "",
  #   main_genre_id: classical.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le rap, c'est par des mecs, pour des mecs",
  #   description: "",
  #   main_genre_id: rap.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le rap est toujours misogyne",
  #   description: "",
  #   main_genre_id: rap.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le jazz c'est des mecs qui jouent n'importe comment sous prétexte d'improvisation",
  #   description: "",
  #   main_genre_id: jazz.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le jazz n’a pas changé depuis les années 40",
  #   description: "",
  #   main_genre_id: jazz.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "La pop, c'est de la musique 'girly'",
  #   description: "",
  #   main_genre_id: pop.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # },
  # {
  #   name: "Le rock n’a pas changé depuis les années 70",
  #   description: "",
  #   main_genre_id: rock.id,
  #   tracks: [
  #     { youtube: '', genre: '' }
  #   ]
  # }
]

puts '-------------------------------------------------------------------------'
puts "CREATING #{opinions.size} OPINIONS AND RELATED TRACKS AND #{VOTES_BY_TRACK_MIN} TO #{VOTES_BY_TRACK_MAX} VOTES BY TRACK"

opinions.each do |opinion|
  user = User.order('RANDOM()').first
  opinion_instance = Opinion.create!(
    name: opinion[:name],
    description: opinion[:description],
    creator_id: user.id
  )
  opinion_instance.id < 10 ? space = ' ' : space = ''
  puts "OPINION #{space}#{opinion_instance.id}"
  puts '.................................'
  opinion[:tracks].each do |track|
    user = User.order('RANDOM()').first
    track_instance = Track.create!(
      name: track[:artist] << ' - ' << track[:name],
      artist: track[:artist],
      photo: "https://i.ytimg.com/vi/#{track[:youtube]}/mqdefault.jpg",
      youtube_id: track[:youtube],
      creator_id: user.id,
      genre_id: track[:genre].id,
      opinion_id: opinion_instance.id,
      approved: rand(-1..1)
    )
    print " 🎹 "
    rand(VOTES_BY_TRACK_MIN..VOTES_BY_TRACK_MAX).times do
      user = User.order('RANDOM()').first
      vote = Vote.create!(
        user_id: user.id,
        track_id: track_instance.id
      )
      print [' 💙 ', ' 💜 ', ' 💛 '].sample
    end
    puts ''
  end
  puts ''
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'SEED DONE'

puts "Users:    #{User.count}"
puts "Opinions: #{Opinion.count}"
puts "Tracks:   #{Track.count}"
puts "Votes:    #{Vote.count}"
