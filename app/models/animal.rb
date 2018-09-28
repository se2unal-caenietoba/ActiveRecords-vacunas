class Animal < ApplicationRecord
    
    validates :nombre, length: {maximim: 20}
    validates :edad, numericality: {less_than: 20}
    
    has_many :recomendacions, as: :imageable
    has_many :vacunas, through: :recomendacions
    
    has_many :vacuna_has_animals
    has_many :animals, through: :vacuna_has_animals
    
    belongs_to :especie
    
    has_many :hijos, class_name: "Animal", foreign_key: "padre_id"
    belongs_to :padre, class_name: "Animal", optional: true
    belongs_to :padre_especie, class_name: "Especie", optional: true
end
