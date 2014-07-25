class Dragon
  attr_reader :name, :color
  attr_accessor :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @eaten = 0
  end

  def hungry?
    @eaten < 6 ? true : false
  end

  def eat
    @eaten += 2
  end

  def change_rider(name)
    @rider = name
  end

end
