class CreateEspecies < ActiveRecord::Migration[5.2]
  def change
    create_table :especies do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
