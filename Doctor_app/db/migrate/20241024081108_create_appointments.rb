class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.datetime :date
      t.timestamps
    end
  end
end

#migration pour ajouter que chaque rdv a un doctor un patient et une ville

