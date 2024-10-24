# db/seeds.rb

# Supprimer les données existantes
Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

# Créer des Villes
city1 = City.create(city_name: "Paris")
city2 = City.create(city_name: "Lyon")

# Créer des Dogsitters
dogsitter1 = Dogsitter.create(name: "Alice", city: city1)
dogsitter2 = Dogsitter.create(name: "Bob", city: city2)

# Créer des Dogs
dog1 = Dog.create(name: "Rex", city: city1)
dog2 = Dog.create(name: "Fido", city: city2)

# Créer des Strolls
Stroll.create(dogsitter: dogsitter1, dog: dog1)
Stroll.create(dogsitter: dogsitter2, dog: dog2)
