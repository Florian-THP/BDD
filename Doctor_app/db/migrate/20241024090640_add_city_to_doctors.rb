class AddCityToDoctors < ActiveRecord::Migration[7.2]
  def change
    add_reference :doctors, :city, null: false, foreign_key: true
  end
end

#Chaque docteur est lié à une ville; une ville peut avoir plusieurs docteurs, patients, et rendez-vous.
