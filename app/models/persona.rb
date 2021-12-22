require 'date'

class Persona < ApplicationRecord

  validates :nombre,:apellido,:fecha_nac,:dni, presence: true

  validates :nombre, :apellido, format: { with: /\A[a-zA-Z]+\z/, message: "Contiene solo letras" }

  validates :dni, 

  length: {is:8,message: "Dni debe tener 8 númeross"},

  uniqueness: true,

  format: { with: /\A\d+\z/, message: "Contiene solo numeros" } 
 
  
  def age
    dob = fecha_nac
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end



end
