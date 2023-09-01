class User < ApplicationRecord

    # Validaciones de campo requerido
    validates :type_person,     presence: true
    validates :identification,  presence: true
    validates :issuance_date,   presence: true
    validates :expiration_date, presence: true
    validates :name,            presence: true
    validates :email,           presence: true
    validates :main_phone,      presence: true

    # Validación sólo caracteres alfanuméricos, se permiten la ñ y los caracteres acentuados
    validates :name, format: { with: /\A[a-zA-ZñáéíóúÁÉÍÓÚ\s]+\z/, message: "Sólo se permiten caracteres alfanuméricos, la ñ y caracteres acentuados." }

    # Validación sólo caracteres numéricos y debe empezar por cero.
    validates :main_phone, format: { with: /\A0\d+\z/, message: "Sólo se permiten caracteres numéricos y debe empezar por cero." }
    validates :secondary_phone, format: { with: /\A0\d+\z/, message: "Sólo se permiten caracteres numéricos y debe empezar por cero." }, allow_blank: true

    # Validación para formatos válidos de fecha sin letras. Se requiere que sea DD-MM-AAAA o DD/MM/AAAA
    # validates :issuance_date, format: { with: /\A\d{2}[-\/]\d{2}[-\/]\d{4}\z/, message: "Formato de fecha incorrecta. Utiliza DD-MM-AAAA o DD/MM/AAAA" }
    # validates :expiration_date, format: { with: /\A\d{2}[-\/]\d{2}[-\/]\d{4}\z/, message: "Formato de fecha incorrecta. Utiliza DD-MM-AAAA o DD/MM/AAAA" }
    
    # Validación para formato válido de email
    validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Formato de email incorrecto." }

end
