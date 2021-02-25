class Owner
  attr_reader :name,
              :occupation,
              :cars
  def initialize(name, occupation)
    @name       = name
    @occupation = occupation
    @cars      = []
  end

    def buy(car_descrip)
      new_car = {:description =>(car_descrip),
      :year => car_descrip.split[0]}
      @cars = Car.new(new_car)
      require "pry"; binding.pry
    end
  end

  def vintage_cars
    @cars.find_all do |car|
      car.age >= 25
    end
  end
