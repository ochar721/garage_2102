require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/owner'
require './lib/garage'

class GarageTest < Minitest::Test
  def test_it_exists_and_has_attributes
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_2 = Owner.new('Glen Coco', 'Unknown')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')
    assert_instance_of Garage, garage
    assert_equal "Totally Safe Garage", garage.name
    assert_equal [], garage.customers
  end

  def test_it_can_add_customers
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_2 = Owner.new('Glen Coco', 'Unknown')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    assert_equal [owner_1, owner_2], garage.customers
  end

  def test_it_can_read_all_cars
    skip
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_2 = Owner.new('Glen Coco', 'Unknown')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    assert_equal [car_1, car_2, car_3, car_4], garage.all_cars
  end

  def cars_by_make
    skip
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_2 = Owner.new('Glen Coco', 'Unknown')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    expected = {
      "Ford" => [car_1, car_2],
      "Chevrolet" => [car_3],
      "Volvo" => [car_4]
       }
       assert_equal expected, garage.cars_by_make
  end

  def test_it_has_oldest_cars
    skip
    garage = Garage.new('Totally Safe Parking')
    owner_1 = Owner.new('Regina George', 'Heiress')
    owner_2 = Owner.new('Glen Coco', 'Unknown')

    owner_1.buy('1967 Green Ford Mustang')
    owner_1.buy('2001 Blue Ford Escape')

    owner_2.buy('1963 Green Chevrolet Corvette')
    owner_2.buy('2020 Silver Volvo XC90')

    garage.add_customer(owner_1)
    garage.add_customer(owner_2)
    expected = [car_3, car_1, car_2]
    assert_equal expected, garage.oldest_cars
  end
end
