require "test_helper"

class DepartamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @departament = departaments(:one)
  end

  test "should get index" do
    get departaments_url
    assert_response :success
  end

  test "should get new" do
    get new_departament_url
    assert_response :success
  end

  test "should create departament" do
    assert_difference("Departament.count") do
      post departaments_url, params: { departament: { bathrooms: @departament.bathrooms, bedrooms: @departament.bedrooms, building_id: @departament.building_id, client_id: @departament.client_id, floor: @departament.floor, number: @departament.number, price: @departament.price, squaremeters: @departament.squaremeters, status_id: @departament.status_id } }
    end

    assert_redirected_to departament_url(Departament.last)
  end

  test "should show departament" do
    get departament_url(@departament)
    assert_response :success
  end

  test "should get edit" do
    get edit_departament_url(@departament)
    assert_response :success
  end

  test "should update departament" do
    patch departament_url(@departament), params: { departament: { bathrooms: @departament.bathrooms, bedrooms: @departament.bedrooms, building_id: @departament.building_id, client_id: @departament.client_id, floor: @departament.floor, number: @departament.number, price: @departament.price, squaremeters: @departament.squaremeters, status_id: @departament.status_id } }
    assert_redirected_to departament_url(@departament)
  end

  test "should destroy departament" do
    assert_difference("Departament.count", -1) do
      delete departament_url(@departament)
    end

    assert_redirected_to departaments_url
  end
end
