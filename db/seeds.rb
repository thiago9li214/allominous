# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Minou.destroy_all

puts 'Creating minous...'
minous_attributes = [
  {
    name:         'Puss in Boots',
    size:         'moyen',
    specie:       'chat',
    age:          4,
    personality:  'dragueur',
    description:  'Puss est un chat roux marchant sur ses deux pattes arrières, qui sont dans des bottes noires.',
    user_id:      1
  },
  {
    name:         'Simba',
    size:         'petit',
    specie:       'lion',
    age:          1,
    personality:  'espiègle',
    description:  'Il est le futur roi du royaume animal.',
    user_id:      1
  },
  {
    name:         'Shere Khan',
    size:         'grand',
    specie:       'tigre',
    age:          9,
    personality:  'sournois',
    description:  'Il aime pas trop Mowgli. Ni Baloo. Ni Baghera.',
    user_id:      2
  },
  {
    name:         'Tom de Jerrys',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    user_id:      1
  },
  {
    name:         'Grumpy Cat',
    size:         'moyen',
    specie:       'chat',
    age:          3,
    personality:  'grumpy',
    description:  'Carrément méchant, jamais content.',
    user_id:      1
  },
]
Minou.create!(minous_attributes)
puts 'Finished!'

