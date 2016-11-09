class Car
  attr_accessor: color

  def initializer(color, engine_started)
    @color = color
    @engine_started = false
  end

  def paint(color)
    @color = color
  end

  def start
  @engine_started = true
  end
end
