require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
class CarTest < Minitest::Test

  def test_it_exists_and_has_attributes
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_equal Car, car_1
    assert_equal "Ford", car_1.make
    assert_equal "Mustang", car_1.model
    assert_equal "Green", car_1.color
    assert_equal "1967", car_1.year
  end

  def test_it_has_an_age
    car_1 = Car.new({description: 'Green Ford Mustang', year: '1967'})
    assert_equal 54, car_1.age
  end
end
