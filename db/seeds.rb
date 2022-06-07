# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User:
Gnome.destroy_all
User.destroy_all
puts "Creating users"

user1 = User.create!(email: 'brian@gmail.com', first_name: 'Brian', last_name: 'Singer', password: '123456', password_confirmation: '123456')
puts "User 1 created"
user2 = User.create!(email: 'kevin@gmail.com', first_name: 'Kevin', last_name: 'Feige', password: 'azerty', password_confirmation: 'azerty')
puts "User 2 created"
# Gnome:
puts "Creating Gnomes"

Gnome.create!(name: 'Atchoum', description: 'Perpetuellement embêté par son rhume des foins', user: user1)
Gnome.create!(name: 'Joyeux', description: 'Toujours gai et optimiste', user: user1)
Gnome.create!(name: 'Prof', description: 'Chef autoproclamé du groupe', user: user2)
puts "3 gnomes were created"
Gnome.create!(name: 'Simplet', description: 'Le nain muet, préferé de blanche', user: user1)
Gnome.create!(name: 'Timide' , description: 'Timide, tres timide mais efficace', user: user1)
Gnome.create!(name: 'Dormeur', description: 'Très paresseux, toujours en manque de someil', user: user2)
puts "6 gnomes were created"
Gnome.create!(name: 'Grincheux',  description: 'Grincheux, râleur de la bande', user: user2)
Gnome.create!(name: 'Hobbit', description: 'Sauveur de Blanche neige', user: user1)
Gnome.create!(name: 'Messi', description: 'Le passe partout :)', user: user2)
puts "6 gnomes were created"

puts "Seeds finished"
