class Owner
  attr_reader :name,
              :occupation,
              :cars
  def initialize(name, occupation)
    @name       = name
    @occupation = occupation
  end
end
