require 'test_helper'

class TypeRestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_restaurant = type_restaurants(:one)
  end

  test "should get index" do
    get type_restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_type_restaurant_url
    assert_response :success
  end

  test "should create type_restaurant" do
    assert_difference('TypeRestaurant.count') do
      post type_restaurants_url, params: { type_restaurant: { name: @type_restaurant.name } }
    end

    assert_redirected_to type_restaurant_url(TypeRestaurant.last)
  end

  test "should show type_restaurant" do
    get type_restaurant_url(@type_restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_restaurant_url(@type_restaurant)
    assert_response :success
  end

  test "should update type_restaurant" do
    patch type_restaurant_url(@type_restaurant), params: { type_restaurant: { name: @type_restaurant.name } }
    assert_redirected_to type_restaurant_url(@type_restaurant)
  end

  test "should destroy type_restaurant" do
    assert_difference('TypeRestaurant.count', -1) do
      delete type_restaurant_url(@type_restaurant)
    end

    assert_redirected_to type_restaurants_url
  end
end
