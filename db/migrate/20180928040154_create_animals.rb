class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end
