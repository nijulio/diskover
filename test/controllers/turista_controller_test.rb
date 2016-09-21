require 'test_helper'

class TuristaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turistum = turista(:one)
  end

  test "should get index" do
    get turista_url
    assert_response :success
  end

  test "should get new" do
    get new_turistum_url
    assert_response :success
  end

  test "should create turistum" do
    assert_difference('Turistum.count') do
      post turista_url, params: { turistum: { contraseÇña: @turistum.contraseÇña, mail: @turistum.mail, nombre: @turistum.nombre } }
    end

    assert_redirected_to turistum_url(Turistum.last)
  end

  test "should show turistum" do
    get turistum_url(@turistum)
    assert_response :success
  end

  test "should get edit" do
    get edit_turistum_url(@turistum)
    assert_response :success
  end

  test "should update turistum" do
    patch turistum_url(@turistum), params: { turistum: { contraseÇña: @turistum.contraseÇña, mail: @turistum.mail, nombre: @turistum.nombre } }
    assert_redirected_to turistum_url(@turistum)
  end

  test "should destroy turistum" do
    assert_difference('Turistum.count', -1) do
      delete turistum_url(@turistum)
    end

    assert_redirected_to turista_url
  end
end
