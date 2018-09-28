class Especie < ApplicationRecord
    validates :nombre, length: {in: 5..60}
    
    has_many :animals
end
