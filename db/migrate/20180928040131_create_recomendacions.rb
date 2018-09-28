class CreateRecomendacions < ActiveRecord::Migration[5.2]
  def change
    create_table :recomendacions do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
