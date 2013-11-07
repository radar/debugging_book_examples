class Car
  attr_accessor :on

  def start
    on = true
  end
end

car = Car.new
car.start
puts car.on