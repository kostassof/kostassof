class Mcdo
  attr_accessor :name, :city, :seats, :preparation_time

  def initialize(name, city, seats, preparation_time)
    @name, @city, @seats, @preparation_time = name, city, seats, preparation_time
  end
end

savoura = Mcdo.new("Quick", "Antwerp", 100, 5)
p "Your order will be ready in #{savoura.preparation_time} minutes"

