require 'test_helper'

class PersonaTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  fixtures :personas

  def np_valid()
    Persona.new(
      nombre: "juan",
      apellido: "juanes",
      fecha_nac: "2000-1-1",
      dni: 10000000
    )
  end

  test "persona attributes must not be empty" do
    persona = Persona.new
    assert persona.invalid?
    assert persona.errors[:nombre].any?
    assert persona.errors[:apellido].any?
    assert persona.errors[:fecha_nac].any?
    assert persona.errors[:dni].any?
  end


  test "persona nombre must not contain simbols" do
    pers = personas(:martin) 
    pers.nombre = "juan!"
    assert pers.invalid?
    assert_equal ["Contiene solo letras"], pers.errors[:nombre]
  end

  test "persona dni must be 8 characters" do
    pers = np_valid
    pers.dni=2
    assert pers.invalid?
    assert_equal ["Dni debe tener 8 númeross"], pers.errors[:dni]
  end

end
