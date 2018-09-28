class AgregarAsociasiones < ActiveRecord::Migration[5.2]
  def change
    change_table :recomendacions do |t|
      t.belongs_to :vacuna, index: true
      t.belongs_to :animal, index: true
    end
    
    change_table :vacuna_has_animals do |t|
      t.belongs_to :vacuna, index: true
      t.belongs_to :animal, index: true
    end
    
    change_table :animals do |t|
      t.belongs_to :especi, index: true
      t.references :padre, index: true
      t.references :padre_especie, index: true
    end
  end
end
