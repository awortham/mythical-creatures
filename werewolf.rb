class Werewolf
  attr_reader :name
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
  end

  def location
    @location
  end

  def human?
    @human
  end

  def change!
    @human = !@human
  end

  def werewolf?
    !human?
  end
end
