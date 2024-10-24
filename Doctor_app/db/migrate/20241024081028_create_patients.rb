class CreatePatients < ActiveRecord::Migration[7.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end
  end
end


# migration pour ajouter que chaque patient est lier à UNE ville
# peut avoir plusieurs rendez-vous et peut consulter plusieurs docteurs


