require 'test_helper'

class PersonasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @persona = personas(:martin)
    @update = {
      id: 14,
      nombre: 'Juan',
      apellido: 'Lopez',
      fecha_nac: '2000-1-1',
      dni: 30893489,
    }
  end

  # test "should get index" do
  #   get personas_url
  #   assert_response :success
  #   # Numero de columnas en la tabla
  #   assert_select 'thead tr td', minimum: 7
  #   assert_select '.entry', 2
  #   assert_select 'h1', 'Personas (edad promedio: 31)'
  # end

  # test "should get new" do
  #   get new_persona_url
  #   assert_response :success
  # end

  # test "should create persona" do
  #   assert_difference('Persona.count') do
  #     post persona_url, params: { persona: @pciwcciwersona}
  #   end

  #   assert_redirected_to persona_url(Persona.last)
  # end

  # test "should show persona" do
  #   get persona_url(@persona)
  #   assert_response :success
  #   assert_select '.personas p strong', 'Nombre:'
  #   assert_select '.personas p strong', 'Apellido:'
  #   assert_select '.personas p strong', 'Fecha nac:'
  #   assert_select '.personas p strong', 'Edad'
  #   assert_select '.personas p strong', 'Dni:'
  #   assert_select 'p', 6
  # end

  # test "should get edit" do
  #   get edit_persona_url(@persona)
  #   assert_response :success
  # end

  # test "should update persona" do
  #   patch persona_url(@persona), params: { persona: @update}
  #   assert_redirected_to persona_url(@persona)
  # end

  # test "should destroy persona" do
  #   assert_difference('Persona.count', -1) do
  #     delete persona_url(@persona)
  #   end

  #   assert_redirected_to personas_url
  # end
end
