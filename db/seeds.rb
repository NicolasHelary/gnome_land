# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
# User:
Gnome.destroy_all
User.destroy_all
puts "Creating users"

user1 = User.create!(email: 'brian@gmail.com', first_name: 'Brian', last_name: 'Singer', password: '123456', password_confirmation: '123456')
puts "User 1 created"
user2 = User.create!(email: 'kevin@gmail.com', first_name: 'Kevin', last_name: 'Feige', password: 'azerty', password_confirmation: 'azerty')
puts "User 2 created"

# file (uri-img):
file1 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome1_sehigh.jpg')
file2 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome2_ledlv3.jpg')
file3 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome3_mmybet.jpg')
file4 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome4_uqwehh.jpg')
file5 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome5_sdpejs.jpg')
file6 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683664/gnome6_wptqiu.jpg')
file7 = URI.open('https://res.cloudinary.com/dnlgspyxu/image/upload/v1654683663/gnome7_spgkdt.jpg')

# Gnome:
puts "Creating Gnomes"

gnome1 = Gnome.create!(name: 'Atchoum', description: 'Perpetuellement embêté par son rhume des foins', price: 10, user: user1)
gnome2 = Gnome.create!(name: 'Joyeux', description: 'Toujours gai et optimiste', price: 11, user: user1)
gnome3 = Gnome.create!(name: 'Prof', description: 'Chef autoproclamé du groupe', price: 12, user: user2)
puts "3 gnomes were created"
gnome4 = Gnome.create!(name: 'Simplet', description: 'Le nain muet, préferé de blanche', price: 13, user: user1)
gnome5 = Gnome.create!(name: 'Timide' , description: 'Timide, tres timide mais efficace', price: 14, user: user1)
gnome6 = Gnome.create!(name: 'Dormeur', description: 'Très paresseux, toujours en manque de someil', price: 15, user: user2)
gnome7 = Gnome.create!(name: 'Grincheux',  description: 'Grincheux, râleur de la bande', price: 16, user: user2)
puts "7 gnomes were created"

# attached photo
gnome1.photo.attach(io: file1, filename: 'gnome1', content_type: 'image/jpg')
gnome2.photo.attach(io: file2, filename: 'gnome2', content_type: 'image/jpg')
gnome3.photo.attach(io: file3, filename: 'gnome3', content_type: 'image/jpg')
gnome4.photo.attach(io: file4, filename: 'gnome4', content_type: 'image/jpg')
gnome5.photo.attach(io: file5, filename: 'gnome5', content_type: 'image/jpg')
gnome6.photo.attach(io: file6, filename: 'gnome6', content_type: 'image/jpg')
gnome7.photo.attach(io: file7, filename: 'gnome7', content_type: 'image/jpg')

puts "Seeds finished"
