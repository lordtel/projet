require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  setup do
    @city = cities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city" do
    assert_difference('City.count') do
      post :create, city: { lat: @city.lat, long: @city.long, name: @city.name, postalcode: @city.postalcode }
    end
    assert_redirected_to city_path(assigns(:city))
  end
  
  test "should not save city if blank in record" do
    assert_no_difference('City.count') do
      post :create, city: { name: nil, lat: nil, long: nil }
    end
  end

  test "should show city" do
    get :show, id: @city
    assert_response :success
  end
  

  test "should get edit" do
    get :edit, id: @city
    assert_response :success
  end

  test "should update city" do
    patch :update, id: @city, city: { lat: @city.lat, long: @city.long, name: @city.name, postalcode: @city.postalcode }
    assert_redirected_to city_path(assigns(:city))
  end

  test "should destroy city" do
    assert_difference('City.count', -1) do
      delete :destroy, id: @city
    end

    assert_redirected_to cities_path
  end
end
