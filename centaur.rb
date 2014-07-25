class Centaur
  attr_reader :name, :breed
  attr_accessor :standing
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = 0
    @standing = true
  end

  def shoot
    create_action("Twang!!!")
  end

  def run
    create_action("Clop clop clop clop!!!")
  end

  def create_action(message)
    return "NO!" if cranky? || laying?

    @cranky += 1
    message
  end

  def cranky?
    @cranky >= 3
  end

  def standing?
    standing
  end

  def sleep
    laying? ? @cranky = 0 : "NO!"
  end

  def lay_down
    @standing = false
  end

  def laying?
    !standing
  end

  def stand_up
    self.standing = true
  end


end
