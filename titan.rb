class Titan
  attr_reader :name

  def initialize(name, power="Lightning")
    @name = name
  end
  def power?
    true
  end
  def power
    "Lightning"
  end
  def noble_deeds
    "Helps Poor"
  end
end
