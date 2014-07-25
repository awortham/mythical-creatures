class Medusa
  attr_reader :name
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    @statues << victim
    victim.stared_at
  end

  def statues
    @statues
  end

end
class Person
  attr_reader :name
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stared_at
    @stoned = true
  end

  def stoned?
    @stoned
  end
end
