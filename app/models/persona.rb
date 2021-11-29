class Persona < ApplicationRecord

  validates :nombre,:apellido,:fecha_nac,:dni, presence: true

  validates :nombre, :apellido, format: { with: /\A[a-zA-Z]+\z/, message: "Contiene solo letras" }

  validates :dni, 

  length: {is:8,message: "Dni debe tener 8 númeross"},

  uniqueness: true,

  format: { with: /\A\d+\z/, message: "Contiene solo numeros" } 
  
end
