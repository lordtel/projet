require 'test_helper'

class CityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "city validation does geocoding" do
    belfort = City.new
    belfort.name = 'belfort'
    assert belfort.valid?
    assert_equal(47.6379599, belfort.lat)
    assert_equal(6.8628942, belfort.long)
  end
  
  test "city does not exist" do
    unknown = City.new
    unknown.name = 'MyString'
    assert !unknown.valid?
  end
end