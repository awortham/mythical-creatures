gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'mermaid'

class MermaidTest < Minitest::Test
  def test_it_has_a_name
    mermaid = Mermaid.new("Ariel")
    assert_equal "Ariel", mermaid.name
  end

  def test_mermaid_cannot_walk_by_default
    mermaid = Mermaid.new("Ariel")
    refute mermaid.walk?
  end

def test_when_mermaid_smiles_at_an_animal_she_gains_a_new_friend

  mermaid = Mermaid.new("Ariel")
  crab = Friend.new("Sebastian")

  mermaid.smile(crab)
  assert_equal 1, mermaid.friends.count
  assert_equal "Sebastian", mermaid.friends.first.name
end
end
