# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ken = Author.create(name: "Ken Follett")
catherine = Author.create(name: "Catherine Coulter")
clive = Author.create(name: "Clive Cussler")
robin = Author.create(name: "Robin Burcell")

book1 = Book.create(title: "A Column of Fire", authors: [ken])
book2 = Book.create(title: "Enigma", authors: [catherine])
book3 = Book.create(title: "The Romanov Ransom", authors: [clive, robin])
