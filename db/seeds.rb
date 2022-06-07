# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User:
User.delete_all
user1 = User.create([{ email: 'brian@gmail.com' }, { first_name: 'Brian' }, { last_name: 'Singer' }, { password: '123456' }, { password_confirmation: '123456' }])
user2 = User.create([{ email: 'kevin@gmail.com' }, { first_name: 'Kevin' }, { last_name: 'Feige' }, { password: 'azerty' }, { password_confirmation: 'azerty' }])

# Gnome:
Gnome.delete_all
gnome1 = Gnome.create([{ name: 'Atchoum' }, { description: 'Perpetuellement embêté par son rhume des foins' }])
gnome2 = Gnome.create([{ name: 'Joyeux' }, { description: 'Toujours gai et optimiste' }])
gnome3 = Gnome.create([{ name: 'Prof' }, { description: 'Chef autoproclamé du groupe' }])
gnome4 = Gnome.create([{ name: 'Simplet' }, { description: 'Le nain muet, préferé de blanche' }])
gnome5 = Gnome.create([{ name: 'Timide' }, { description: 'Timide, tres timide mais efficace' }])
gnome6 = Gnome.create([{ name: 'Dormeur' }, { description: 'Très paresseux, toujours en manque de someil' }])
gnome7 = Gnome.create([{ name: 'Grincheux' }, { description: 'Grincheux, râleur de la bande' }])
gnome8 = Gnome.create([{ name: 'Hobbit' }, { description: 'Sauveur de Blanche neige' }])
gnome9 = Gnome.create([{ name: 'Messi' }, { description: 'Le passe partout' }])

