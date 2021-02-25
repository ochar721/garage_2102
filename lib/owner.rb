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
      @make = car_descrip.split[2]
      @model = car_descrip.split[3]
      @color = car_descrip.split[1]
      @year = car_descrip.split[0]

      new_car = {:description =>(@make + @model + @color),
      :year => @year}
      @cars = Car.new(new_car)
    end
  end

  def vintage_cars
    @cars.each do |car|
      car.age >= 25
  end
