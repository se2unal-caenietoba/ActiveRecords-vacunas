class CreateVacunas < ActiveRecord::Migration[5.2]
  def change
    create_table :vacunas do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
