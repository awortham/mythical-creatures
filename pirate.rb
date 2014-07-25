class Pirate
  attr_reader :name
  attr_accessor :job
  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @heinous_acts = 0
  end

  def cursed?
    @heinous_acts > 2
  end

  def commit_heinous_act
    @heinous_acts += 1
  end

  def become_captain
    @job = "Captain" if more_than_10_heinous_acts?
  end

  def more_than_10_heinous_acts?
    @heinous_acts >= 10
  end

  def captain?
    @job == "Captain"
  end

end
