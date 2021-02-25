require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'

class OwnerTest < Minitest::Test
  def test_it_exists_and_has_attributes
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_instance_of Owner, owner_1
    assert_equal "Regina George", owner_1.name
    assert_equal "Heiress", owner_1.occupation
  end

  def test_it_starts_with_no_cars
    owner_1 = Owner.new('Regina George', 'Heiress')
    assert_equal [], owner_1.cars
  end

  def test_it_can_buy_cars
    owner_1 = Owner.new('Regina George', 'Heiress')


    owner_1.buy('1967 Green Ford Mustang')

    assert_equal [], owner_1.cars

    owner_1.buy('2001 Silver BMW 3-Series')

    assert_equal ['1967 Green Ford Mustang','2001 Silver BMW 3-Series'], owner_1.cars
  end

  def test_it_has_vintage_cars
    skip
      owner_1 = Owner.new('Regina George', 'Heiress')
      owner_1.buy('1967 Green Ford Mustang')
      owner_1.buy('2001 Silver BMW 3-Series')
      owner_1.buy('1963 Red Chevrolet Corvette')
      assert_equal ['1967 Green Ford Mustang','1963 Red Chevrolet Corvette'], owner_1.vintage_cars
  end
end
