class AsociasionesPolymorficas < ActiveRecord::Migration[5.2]
  def change
    change_table :recomendacions do |t|
      t.references :imageable, polymorphic: true
    end
  end
end
