require "application_system_test_case"

class TypeRestaurantsTest < ApplicationSystemTestCase
  setup do
    @type_restaurant = type_restaurants(:one)
  end

  test "visiting the index" do
    visit type_restaurants_url
    assert_selector "h1", text: "Type Restaurants"
  end

  test "creating a Type restaurant" do
    visit type_restaurants_url
    click_on "New Type Restaurant"

    fill_in "Name", with: @type_restaurant.name
    click_on "Create Type restaurant"

    assert_text "Type restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Type restaurant" do
    visit type_restaurants_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_restaurant.name
    click_on "Update Type restaurant"

    assert_text "Type restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Type restaurant" do
    visit type_restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type restaurant was successfully destroyed"
  end
end
