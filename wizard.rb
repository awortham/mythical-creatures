class Wizard
  attr_reader :name
  def initialize(name, bearded: true)
    @name=name
    @beard = bearded
  end

  def bearded?
    @beard
  end

  def incantation(words)
    "sudo #{words}"
  end
end
