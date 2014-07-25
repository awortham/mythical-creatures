gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'titan'

class TitanTest < Minitest::Test
  def test_it_has_a_name
    titan = Titan.new("Frank")
    assert_equal "Frank", titan.name
  end

  def test_it_has_no_power_by_default
    titan = Titan.new("Frank")
    assert titan.power?
  end

  def test_it_can_have_a_power
    titan = Titan.new("Thor", "Lightning")
    assert_equal "Lightning", titan.power
  end

  def test_it_can_do_noble_deeds
    titan = Titan.new("Frank")
    assert_equal "Helps poor", titan.noble_deeds
  end

  def test_get_new_power_after_three_noble_deeds
    titan = Titan.new("Frank")
    3.times { titan.noble_deeds }
    assert_equal "Controls the Wind", titan.power
  end
end
