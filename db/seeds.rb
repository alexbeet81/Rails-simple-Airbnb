# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.create!(
  name: 'Entire house hosted by Salomon',
  address: '92 St Thomas Street',
  description: 'A lovely family home with a large garden. Perfect for children',
  price_per_night: 100,
  number_of_guests: 5
  )

Flat.create!(
  name: 'Large bright studio flat',
  address: '2nd street, Soho',
  description: 'A greate flat situtated in the heart of the city.',
  price_per_night: 75,
  number_of_guests: 2
  )

Flat.create!(
  name: 'Cheap and chearful apartment',
  address: 'Upper Street',
  description: 'Great little place, easy access to shops.',
  price_per_night: 50,
  number_of_guests: 2
  )

Flat.create!(
  name: 'Old style farm',
  address: 'Farm road',
  description: 'A working farm. Get the sights and smells of a real working farm.',
  price_per_night: 100,
  number_of_guests: 6
  )
