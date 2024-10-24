# Supprimer les données existantes pour éviter les doublons
User.destroy_all
City.destroy_all
Gossip.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all

# Créer 10 villes avec Faker
cities = []
10.times do
  cities << City.create(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# Créer 10 utilisateurs avec Faker et les associer à une ville
users = []
10.times do
  users << User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 10),
    email: Faker::Internet.email,
    age: rand(18..65),
    city: cities.sample  # Associe chaque utilisateur à une ville aléatoire
  )
end

# Créer 20 gossips avec Faker et les lier à un utilisateur aléatoire
gossips = []
20.times do
  gossips << Gossip.create(
    title: Faker::Lorem.sentence(word_count: 3),
    content: Faker::Lorem.paragraph(sentence_count: 5),
    user: users.sample  # Associe chaque gossip à un utilisateur aléatoire
  )
end

# Créer 10 tags avec Faker et les associer à des gossips
tags = []
10.times do
  tags << Tag.create(
    title: Faker::Hipster.word
  )
end

gossips.each do |gossip|
  gossip.tags << tags.sample(rand(1..3))  # Associe entre 1 et 3 tags aléatoires à chaque gossip
end

# Créer 10 messages privés avec Faker
10.times do
  pm = PrivateMessage.create(
    content: Faker::Lorem.paragraph(sentence_count: 2),
    sender: users.sample  # Sélectionne un expéditeur aléatoire parmi les utilisateurs
  )

  # Ajouter des destinataires (1 à 3 destinataires aléatoires)
  recipients = users.sample(rand(1..3))  # Sélectionne entre 1 et 3 destinataires
  pm.recipients << recipients
end

puts "Seed exécuté avec succès : 10 villes, 10 utilisateurs, 20 gossips, 10 tags, 10 messages privés créés avec succès!"
