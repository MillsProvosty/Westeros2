class Person
  attr_reader :name,
              :id,
              :house

  def initialize(info, house)
    @name = info[:name]
    @id = info[:id]
    @house = house.capitalize
  end
end
