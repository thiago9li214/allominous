# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Rental.destroy_all
Minou.destroy_all
User.destroy_all


puts 'Creating users...'

# User 1
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/g_face,c_thumb,w_200,h_200/v1519223923/plage_copie.jpg'
user = User.new( {
    first_name:  'MinouLover',
    last_name:   'KatFan',
    email:       'minous@gmail.com',
    password: 'azerty',
    address:      'Paris'
  } )
user.remote_photo_url = url
user.save!

# User 2
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/g_face,c_thumb,w_200,h_200/v1519223922/e%CC%81pe%CC%81e_copie.jpg'
user = User.new( {
    first_name:  'MinouLover',
    last_name:   'KatFan',
    email:       'minous2@gmail.com',
    password: 'azerty',
    address:      'Paris'
  } )
user.remote_photo_url = url
user.save!

# User 3
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/g_face,c_thumb,w_200,h_200/v1519223922/contrebois_copie.jpg'
user = User.new( {
    first_name:  'MinouLover',
    last_name:   'KatFan',
    email:       'minous3@gmail.com',
    password: 'azerty',
    address:      'Paris'
  } )
user.remote_photo_url = url
user.save!

# User 4
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user = User.new( {
    first_name:  'MinouLover',
    last_name:   'KatFan',
    email:       'minous4@gmail.com',
    password: 'azerty',
    address:      'Paris'
  } )
user.remote_photo_url = url
user.save!



# url = ''
# user = User.new( {
#     first_name:  'MinouLover',
#     last_name:   'KatFan',
#     email:       'minous@gmail.com',
#     password: 'azerty',
#     address:      'Paris',
#   } )
# user.remote_photo_url = url
# user.save!





# users_attributes = [
#   {
#     first_name:  'MinouLover',
#     last_name:   'KatFan',
#     email:       'minous@gmail.com',
#     password: 'azerty',
#     address:      'Paris',
#     # photo:       'image/upload/v1519223923/plage_copie.jpg'
#   }
  # ,
  # {
  #   name:         'Simba',
  #   size:         'petit',
  #   specie:       'lion',
  #   age:          1,
  #   personality:  'espiègle',
  #   description:  'Il est le futur roi du royaume animal.',
  #   daily_price:  6,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Shere Khan',
  #   size:         'grand',
  #   specie:       'tigre',
  #   age:          9,
  #   personality:  'sournois',
  #   description:  'Il aime pas trop Mowgli. Ni Baloo. Ni Baghera.',
  #   daily_price:  7,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Tom de Jerrys',
  #   size:         'moyen',
  #   specie:       'chat',
  #   age:          6,
  #   personality:  'susceptible',
  #   description:  'Il botterait bien les fesses de Jerry.',
  #   daily_price:  8,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Grumpy Cat',
  #   size:         'moyen',
  #   specie:       'chat',
  #   age:          3,
  #   personality:  'grumpy',
  #   description:  'Carrément méchant, jamais content.',
  #   daily_price:  9,
  #   user_id:      1,
  #   photo:
  # },
# ]
puts 'Users created'

puts 'Creating minous...'

# Minou 1
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519223923/plage.jpg'
minou = Minou.new({
    name:         'Puss in Boots',
    size:         'moyen',
    specie:       'chat',
    age:          4,
    personality:  'dragueur',
    description:  'Puss est un chat roux marchant sur ses deux pattes arrières, qui sont dans des bottes noires.',
    daily_price:  5,
    user_id:      1
  })
minou.remote_photo_url = url
minou.save!

# Minou 2
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519223922/e%CC%81pe%CC%81e.jpg'
minou = Minou.new({
    name:         'Simba',
    size:         'petit',
    specie:       'lion',
    age:          1,
    personality:  'espiègle',
    description:  'Il est le futur roi du royaume animal.',
    daily_price:  6,
    user_id:      2
  })
minou.remote_photo_url = url
minou.save!

# Minou 3
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519223922/contrebois.jpg'
minou = Minou.new({
    name:         'Shere Khan',
    size:         'grand',
    specie:       'tigre',
    age:          9,
    personality:  'sournois',
    description:  'Il aime pas trop Mowgli. Ni Baloo. Ni Baghera.',
    daily_price:  7,
    user_id:      3
  })
minou.remote_photo_url = url
minou.save!

# Minou 4
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226472/catcoueette.jpg'
minou = Minou.new({
    name:         'Grumpy Cat',
    size:         'moyen',
    specie:       'chat',
    age:          3,
    personality:  'grumpy',
    description:  'Carrément méchant, jamais content.',
    daily_price:  9,
    user_id:      4
  })
minou.remote_photo_url = url
minou.save!


Minou.create({
    name:         'Tom de Jerrys',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })


Minou.create({
    name:         'Chat botté',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'grumpy',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })

Minou.create({
    name:         'Chat de la mère Michel',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })

Minou.create({
    name:         'L\'Aristochat',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'espiègle',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })


Minou.create({
    name:         'Tigrou',
    size:         'moyen',
    specie:       'tigre',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })

Minou.create({
    name:         'Lucifer',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'sournois',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })

Minou.create({
    name:         'Garfield',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'calin',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      1
  })




# minous_attributes = [
#   {
#     name:         'Puss in Boots',
#     size:         'moyen',
#     specie:       'chat',
#     age:          4,
#     personality:  'dragueur',
#     description:  'Puss est un chat roux marchant sur ses deux pattes arrières, qui sont dans des bottes noires.',
#     daily_price:  5,
#     user_id:      1,
#     photo:        'image/upload/v1519223923/plage.jpg'
#   }
  # ,
  # {
  #   name:         'Simba',
  #   size:         'petit',
  #   specie:       'lion',
  #   age:          1,
  #   personality:  'espiègle',
  #   description:  'Il est le futur roi du royaume animal.',
  #   daily_price:  6,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Shere Khan',
  #   size:         'grand',
  #   specie:       'tigre',
  #   age:          9,
  #   personality:  'sournois',
  #   description:  'Il aime pas trop Mowgli. Ni Baloo. Ni Baghera.',
  #   daily_price:  7,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Tom de Jerrys',
  #   size:         'moyen',
  #   specie:       'chat',
  #   age:          6,
  #   personality:  'susceptible',
  #   description:  'Il botterait bien les fesses de Jerry.',
  #   daily_price:  8,
  #   user_id:      1,
  #   photo:
  # },
  # {
  #   name:         'Grumpy Cat',
  #   size:         'moyen',
  #   specie:       'chat',
  #   age:          3,
  #   personality:  'grumpy',
  #   description:  'Carrément méchant, jamais content.',
  #   daily_price:  9,
  #   user_id:      1,
  #   photo:
  # },
# ]
# Minou.create!(minous_attributes)
puts 'Minous created!'



