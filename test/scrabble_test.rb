gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  def setup
    @scrabble = Scrabble.new
  end

  def test_if_scrabble_exists
    assert @scrabble
  end

  def test_if_it_can_score_a
    assert_equal 1, @scrabble.score("a")
  end

  def test_if_can_score_more_than_one
    assert_equal 2, @scrabble.score("D")
  end

  # def test_it_can_score_a_single_letter
  #   #skip
  #   assert_equal 1, Scrabble.new.score("a")
  #   assert_equal 4, Scrabble.new.score("f")
  # end
end
