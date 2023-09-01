require "application_system_test_case"

class DepartamentsTest < ApplicationSystemTestCase
  setup do
    @departament = departaments(:one)
  end

  test "visiting the index" do
    visit departaments_url
    assert_selector "h1", text: "Departaments"
  end

  test "should create departament" do
    visit departaments_url
    click_on "New departament"

    fill_in "Bathrooms", with: @departament.bathrooms
    fill_in "Bedrooms", with: @departament.bedrooms
    fill_in "Building", with: @departament.building_id
    fill_in "Client", with: @departament.client_id
    fill_in "Floor", with: @departament.floor
    fill_in "Number", with: @departament.number
    fill_in "Price", with: @departament.price
    fill_in "Squaremeters", with: @departament.squaremeters
    fill_in "Status", with: @departament.status_id
    click_on "Create Departament"

    assert_text "Departament was successfully created"
    click_on "Back"
  end

  test "should update Departament" do
    visit departament_url(@departament)
    click_on "Edit this departament", match: :first

    fill_in "Bathrooms", with: @departament.bathrooms
    fill_in "Bedrooms", with: @departament.bedrooms
    fill_in "Building", with: @departament.building_id
    fill_in "Client", with: @departament.client_id
    fill_in "Floor", with: @departament.floor
    fill_in "Number", with: @departament.number
    fill_in "Price", with: @departament.price
    fill_in "Squaremeters", with: @departament.squaremeters
    fill_in "Status", with: @departament.status_id
    click_on "Update Departament"

    assert_text "Departament was successfully updated"
    click_on "Back"
  end

  test "should destroy Departament" do
    visit departament_url(@departament)
    click_on "Destroy this departament", match: :first

    assert_text "Departament was successfully destroyed"
  end
end
