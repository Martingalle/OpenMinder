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

50.times do
  user = User.order('RANDOM()').first
  opinion = Opinion.create!(
    name: Faker::GameOfThrones.quote,
    description: Faker::Lorem.paragraph(2),
    fake_author: Faker::FunnyName.two_word_name,
    fake_city: Faker::Address.city,
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
      audio_url: '',
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
  )
  print '.'
end

puts ''
puts '-------------------------------------------------------------------------'
puts 'CREATING DEMO USER'

User.create!(
    email: 'user@mail.com',
    password: 'azerty',
    username: 'John Doe',
    birth_year: 1987,
    city: 'Lyon',
    photo: '',
    admin: false
)

puts ''
puts '-------------------------------------------------------------------------'
puts 'SEED DONE'

puts "Users: #{User.count}"
puts "Opinions: #{Opinion.count}"
puts "Tracks: #{Track.count}"
puts "Votes: #{Vote.count}"
