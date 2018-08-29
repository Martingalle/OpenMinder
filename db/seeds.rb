# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING GENRES'

GENRES = %w[rock jazz rap folk pop metal]

GENRES.each do |genre|
  Genre.create(
    name: genre,
    photo: ''
  )
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING USERS'

100.times do
  User.create!(
    email: Faker::Internet.email << rand(0..9).to_s,
    password: 'azerty',
    username: Faker::Internet.username,
    birth_year: 1970,
    city: Faker::Address.city,
    photo: '',
    admin: false
  )
  print '.'
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING OPINIONS AND TRACKS'

PHOTOS_URL = [
  'https://picsum.photos/900/300?image=1082',
  'https://picsum.photos/900/300?image=1078',
  'https://picsum.photos/900/300?image=1077',
  'https://picsum.photos/900/300?image=1071',
  'https://picsum.photos/900/300?image=1070',
  'https://picsum.photos/900/300?image=1065',
  'https://picsum.photos/900/300?image=1060',
  'https://picsum.photos/900/300?image=1059',
  'https://picsum.photos/900/300?image=1045',
  'https://picsum.photos/900/300?image=1038',
  'https://picsum.photos/900/300?image=1033',
  'https://picsum.photos/900/300?image=1014',
  'https://picsum.photos/900/300?image=999',
  'https://picsum.photos/900/300?image=995',
  'https://picsum.photos/900/300?image=965',
  'https://picsum.photos/900/300?image=964',
  'https://picsum.photos/900/300?image=961',
  'https://picsum.photos/900/300?image=960',
  'https://picsum.photos/900/300?image=839',
  'https://picsum.photos/900/300?image=836',
]

50.times do
  user = User.order('RANDOM()').first
  opinion = Opinion.create!(
    name: Faker::GameOfThrones.quote,
    description: Faker::Lorem.paragraph(2),
    fake_author: Faker::FunnyName.two_word_name,
    fake_city: Faker::Address.city,
    photo: PHOTOS_URL.sample,
    creator_id: user.id
  )
  rand(8..12).times do
    user = User.order('RANDOM()').first
    genre = Genre.order('RANDOM()').first
    Track.create!(
      name: Faker::Pokemon.move,
      artist: Faker::Music.band,
      artist_location: Faker::Address.city,
      album: Faker::Music.album,
      argument: Faker::Lorem.paragraph(2),
      photo: '',
      audio_url: 'www.audio-' << rand(1..9).to_s << rand(1..9).to_s << '.com',
      creator_id: user.id,
      genre_id: genre.id,
      opinion_id: opinion.id
    )
    print '.'
  end
  print '.'
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING VOTES'

(Track.count * 2).times do
  user = User.order('RANDOM()').first
  track = Track.order('RANDOM()').first
  Vote.create!(
    user_id: user.id,
    track_id: track.id,
    status: ['up', 'down'].sample
  )
  print '.'
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING DEMO USER'

User.create!(
    email: 'user1@mail.com',
    password: 'azerty',
    username: 'Pierre',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: false
)

User.create!(
    email: 'user2@mail.com',
    password: 'azerty',
    username: 'Paul',
    username: 'Jane Doe',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: false
)

User.create!(
    email: 'user3@mail.com',
    password: 'azerty',
    username: 'Jack',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: false
)

User.create!(
    email: 'admin1@mail.com',
    password: 'azerty',
    username: 'Paul',
    username: 'Jane Doe',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: true
)

User.create!(
    email: 'admin2@mail.com',
    password: 'azerty',
    username: 'Jack',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: true
)

puts ''
puts '-------------------------------------------------------------------------'
puts 'SEED DONE'

puts "Users: #{User.count}"
puts "Opinions: #{Opinion.count}"
puts "Tracks: #{Track.count}"
puts "Votes: #{Vote.count}"
