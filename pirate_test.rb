gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'pirate'

class PirateTest < Minitest::Test

  def setup
    @pirate = Pirate.new("Jack")
  end

  def test_has_name
    assert_equal "Jack", @pirate.name
  end

  def test_can_have_different_name
    pirate = Pirate.new("Blackbeard")
    assert_equal "Blackbeard", pirate.name
  end

  def test_is_a_scallywag_by_default
    assert_equal 'Scallywag', @pirate.job
  end

  def test_in_not_always_a_scallywag

    pirate = Pirate.new("Jack", "Cook")
    assert_equal "Cook", pirate.job
  end

  def test_isnt_cursed_by_default

    pirate = Pirate.new("Jack")
    refute pirate.cursed?
  end

  def test_becomes_cursed_after_enough_heinous_acts

    pirate = Pirate.new("Jack")
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    refute pirate.cursed?
    pirate.commit_heinous_act
    assert pirate.cursed?
  end

  def test_pirate_becomes_captain_after_10_heinous_acts
    pirate = Pirate.new("Jack")
    pirate.become_captain
    refute pirate.captain?
    10.times do
      pirate.commit_heinous_act
    end
    pirate.become_captain
    assert pirate.captain?
  end
end
