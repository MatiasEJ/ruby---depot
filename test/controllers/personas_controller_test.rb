require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persona = personas(:martin)
    @update = {
      nombre: 'Juan',
      apellido: 'Lopez',
      fecha_nac: '2000-1-1',
      dni: 10000001,
    }
  end

  test "should get index" do
    get personas_url
    assert_response :success
    # Numero de columnas en la tabla
    assert_select 'thead tr td', minimum: 7
    assert_select '.entry', 2
    assert_select 'h1', 'Personas (edad promedio: 31)'
  end

  test "should get new" do
    get new_persona_url
    assert_response :success
  end

  test "should create persona" do
    assert_difference('Persona.count') do
      post personas_url, params: { persona: @update}
    end

    assert_redirected_to persona_url(Persona.last)
  end

  test "should show persona" do
    get persona_url(@persona)
    assert_response :success
  end

  test "should get edit" do
    get edit_persona_url(@persona)
    assert_response :success
  end

  test "should update persona" do
    patch persona_url(@persona), params: { persona: @update}
    assert_redirected_to persona_url(@persona)
  end

  test "should destroy persona" do
    assert_difference('Persona.count', -1) do
      delete persona_url(@persona)
    end

    assert_redirected_to personas_url
  end
end
