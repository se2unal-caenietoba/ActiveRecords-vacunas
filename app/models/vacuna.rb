class Vacuna < ApplicationRecord
    validates :nombre, length: {in: 2..20}
    validates :nombre, uniqueness: true
    validates :descripcion, length: {in: 2..20}
    
    has_many :recomendacions, as: :imageable
    has_many :animals, through: :recomendacions
    
    has_many :vacuna_has_animals
    has_many :animals, through: :vacuna_has_animals
end
