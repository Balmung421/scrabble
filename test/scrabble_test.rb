gem 'minitest'
require './lib/scrabble'
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

  def test_nil
    assert_equal 0, @scrabble.score(nil)
  end

  def test_empty_string
    assert_equal 0, @scrabble.score("")
  end

  def test_if_it_can_score_a
    assert_equal 1, @scrabble.score("a")
  end

  def test_if_can_score_more_than_one
    assert_equal 2, @scrabble.score("D")
  end

  def test_for_point_value_array
    assert_equal [["A", 1], ["B", 3], ["C", 3], ["D", 2], ["E", 1], ["F", 4], ["G", 2], ["H", 4], ["I", 1], ["J", 8], ["K", 5], ["L", 1], ["M", 3], ["N", 1], ["O", 1], ["P", 3], ["Q", 10], ["R", 1], ["S", 1], ["T", 1], ["U", 1], ["V", 4], ["W", 4], ["X", 8], ["Y", 4], ["Z", 10]], @scrabble.point_values.to_a
  end

  def test_for_point_values
    assert_equal [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10], @scrabble.point_values.values
  end

   def test_it_can_score_a_single_letter
    assert_equal 1, @scrabble.score("a")
    assert_equal 4, @scrabble.score("f")
  end

  def test_two_letter_word
    assert_equal 2, @scrabble.score("aa")
  end

  def test_other_two_letter_word
    assert_equal 20, @scrabble.score("zz")
  end

  def _test_two_letter_word_upcase
    assert_equal 20, @scrabble.score("ZZ")
  end

  def test_two_letter_word_mixed
    assert_equal 20, @scrabble.score("Zz")
  end

  def test_my_cool_doggo
    assert_equal 10, @scrabble.score("Kuma")
  end

  def test_multipliers
    assert_equal 9, @scrabble.score_with_multipliers("hello", [1, 2, 1, 1, 1])
  end

  def test_word_multipliers
    assert_equal 18, @scrabble.score_with_multipliers("hello", [1,2,1,1,1], 2)
  end

  def test_7_letter_word_bonus
    assert_equal 58, @scrabble.score_with_multipliers("sparkle", [1,2,1,3,1,2,1], 2)
  end



end
