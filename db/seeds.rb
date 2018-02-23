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
user1 = User.new( {
    first_name:  'MinouLover',
    last_name:   'KatFan',
    email:       'minous@gmail.com',
    password: 'azerty',
    address:      '16 villa Gaudelet, Paris'
  } )
user1.remote_photo_url = url
user1.save!

# User 2
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/g_face,c_thumb,w_200,h_200/v1519223922/e%CC%81pe%CC%81e_copie.jpg'
user2 = User.new( {
    first_name:  'MinouAccro',
    last_name:   'KatFan',
    email:       'minous2@gmail.com',
    password: 'azerty',
    address:      '13 avenue des Champs Elysées, Paris'
  } )
user2.remote_photo_url = url
user2.save!

# User 3
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/g_face,c_thumb,w_200,h_200/v1519223922/contrebois_copie.jpg'
user3 = User.new( {
    first_name:  'Mickey',
    last_name:   'Minousse',
    email:       'minous3@gmail.com',
    password: 'azerty',
    address:      '27 avenue de la grande armée, Paris'
  } )
user3.remote_photo_url = url
user3.save!

# User 4
url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user4 = User.new( {
    first_name:  'Francois',
    last_name:   'Hollande',
    email:       'minous4@gmail.com',
    password: 'azerty',
    address:      '2 rue des Princes, Boulogne-Billancourt'
  } )
user4.remote_photo_url = url
user4.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user5 = User.new( {
    first_name:  'Marcel',
    last_name:   'Pagnol',
    email:       'minous5@gmail.com',
    password: 'azerty',
    address:      '32 Rue Saint-Marc, 75002 Paris'
  } )
user5.remote_photo_url = url
user5.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user6 = User.new( {
    first_name:  'Emmanuel',
    last_name:   'Macron',
    email:       'minous6@gmail.com',
    password: 'azerty',
    address:      '14 Rue Bonaparte, 75006 Paris'
  } )
user6.remote_photo_url = url
user6.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user7 = User.new( {
    first_name:  'Edison',
    last_name:   'Cavani',
    email:       'minous7@gmail.com',
    password: 'azerty',
    address:      '33 Rue Barbès, 92120 Montrouge'
  } )
user7.remote_photo_url = url
user7.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user8 = User.new( {
    first_name:  'Neymar',
    last_name:   'Junior',
    email:       'minous8@gmail.com',
    password: 'azerty',
    address:      '133 Rue de Turenne, 75003 Paris'
  } )
user8.remote_photo_url = url
user8.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user9 = User.new( {
    first_name:  'Kyllian',
    last_name:   'Mbappe',
    email:       'minous9@gmail.com',
    password: 'azerty',
    address:      '29 Rue Debelleyme, 75003 Paris'
  } )
user9.remote_photo_url = url
user9.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user10 = User.new( {
    first_name:  'Marco',
    last_name:   'Verrati',
    email:       'minous10@gmail.com',
    password: 'azerty',
    address:      '2 Rue Ambroise Paré, 75010 Paris'
  } )
user10.remote_photo_url = url
user10.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user11 = User.new( {
    first_name:  'Thiago',
    last_name:   'Motta',
    email:       'minous11@gmail.com',
    password: 'azerty',
    address:      '35 Rue du Chevalier de la Barre, 75018 Paris'
  } )
user11.remote_photo_url = url
user11.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user12 = User.new( {
    first_name:  'Nabil',
    last_name:   'Fekir',
    email:       'minous12@gmail.com',
    password: 'azerty',
    address:      'Place Bellecour, 69002 Lyon'
  } )
user12.remote_photo_url = url
user12.save!


url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user13 = User.new( {
    first_name:  'Anthony',
    last_name:   'Lopes',
    email:       'minous13@gmail.com',
    password: 'azerty',
    address:      '1 Rue Saint-Nizier, 69002 Lyon'
  } )
user13.remote_photo_url = url
user13.save!

url = 'http://res.cloudinary.com/dxjn2cmij/image/upload/v1519226474/man-with-blanket.jpg'
user14 = User.new( {
    first_name:  'Mariano',
    last_name:   'Diaz',
    email:       'minous14@gmail.com',
    password: 'azerty',
    address:      '108 Grande Rue de la Guillotière, 69007 Lyon'
  } )
user14.remote_photo_url = url
user14.save!



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
    user_id:      user1.id
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
    user_id:      user2.id
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
    user_id:      user3.id
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
    user_id:      user4.id
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
    user_id:      user5.id
  })


Minou.create({
    name:         'Chat botté',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'grumpy',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user6.id
  })

Minou.create({
    name:         'Chat de la mère Michel',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user7.id
  })

Minou.create({
    name:         'L\'Aristochat',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'espiègle',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user8.id
  })


Minou.create({
    name:         'Tigrou',
    size:         'moyen',
    specie:       'tigre',
    age:          6,
    personality:  'susceptible',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user9.id
  })

Minou.create({
    name:         'Lucifer',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'sournois',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user10.id
  })

Minou.create({
    name:         'Garfield',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'calin',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user11.id
  })

Minou.create({
    name:         'Sarkozy',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'calin',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user12.id
  })

Minou.create({
    name:         'Harlem',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'calin',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user13.id
  })

Minou.create({
    name:         'Churchill',
    size:         'moyen',
    specie:       'chat',
    age:          6,
    personality:  'calin',
    description:  'Il botterait bien les fesses de Jerry.',
    daily_price:  8,
    user_id:      user14.id
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



