class TypePeople < ApplicationRecord

    # Tipo de persona puede tener muchos usuarios
    has_many :users

end
