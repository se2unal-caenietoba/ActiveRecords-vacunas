class Recomendacion < ApplicationRecord
    validates :descripcion, length: {in: 3..100}
    
    belongs_to :vacuna
    belongs_to :animal
end
