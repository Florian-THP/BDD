# Suppression des anciennes données
DoctorSpecialty.destroy_all  # Supprime d'abord les relations
Appointment.destroy_all
Patient.destroy_all
Doctor.destroy_all
City.destroy_all
Specialty.destroy_all

# Création de villes
city1 = City.create(name: "New York")
city2 = City.create(name: "Los Angeles")

# Création de spécialités
specialty1 = Specialty.create(name: "Cardiology")
specialty2 = Specialty.create(name: "Pediatrics")
specialty3 = Specialty.create(name: "Neurology")

# Création de docteurs
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", zip_code: "12345", city_id: city1.id)
doctor2 = Doctor.create(first_name: "Alice", last_name: "Smith", zip_code: "67890", city_id: city2.id)

# Lier les docteurs à leurs spécialités
DoctorSpecialty.create(doctor: doctor1, specialty: specialty1)
DoctorSpecialty.create(doctor: doctor1, specialty: specialty3)
DoctorSpecialty.create(doctor: doctor2, specialty: specialty2)

# Création de patients
patient1 = Patient.create(first_name: "Jane", last_name: "Smith", city_id: city1.id)
patient2 = Patient.create(first_name: "Chris", last_name: "Johnson", city_id: city2.id)

# Création de rendez-vous
Appointment.create(doctor: doctor1, patient: patient1, date: DateTime.now, city_id: city1.id)
Appointment.create(doctor: doctor2, patient: patient2, date: DateTime.now + 1.day, city_id: city2.id)
