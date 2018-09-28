class CreateVacunaHasAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :vacuna_has_animals do |t|
      t.date :fecha

      t.timestamps
    end
  end
end
