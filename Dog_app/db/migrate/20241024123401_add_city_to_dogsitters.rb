class AddCityToDogsitters < ActiveRecord::Migration[7.2]
  def change
    add_reference :dogsitters, :city, foreign_key: true, null: true
  end
end
