# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)
Character.destroy_all
House.destroy_all

targaryen = House.create({ name: 'Targaryen',  word: 'Fire and Blood', allegiance: 'Sovereign'})
stark = House.create({ name: 'Stark',  word: 'Winter is Coming', allegiance: 'Sovereign'})
lannister = House.create({ name: 'Lannister', word: 'Hear Me Roar', allegiance: 'Sovereign'})

Character.create(name: 'Daenerys Targaryen', title: 'Queen of Meereen',culture: 'Valyrian', house: targaryen)
Character.create(name: 'Jon Snow', title: 'King in the North', culture: 'Northmen', house: stark)
Character.create( name: 'Cersei Lannister', title: 'Queen of the Andals and the First Men' ,culture: 'Andals', house: lannister)
