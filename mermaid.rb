class Mermaid
  attr_reader :name, :friends

  def initialize(name)
    @name = name
    @friends = []
  end

  def walk?
    false
  end

  def smile(animal)
    @friends << animal
  end

end

class Friend
  attr_reader :name

  def initialize(name)
    @name = name
  end

end
