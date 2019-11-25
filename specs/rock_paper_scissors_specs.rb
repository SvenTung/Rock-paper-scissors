require 'minitest/autorun'
require_relative '../models/rock_paper_scissors'

class TestCalculator < Minitest::Test

  def test_rock_rock
    assert_equal( "Draw", Rps.play("rock", "rock"))
  end

  def test_rock_paper
    assert_equal( "Player 2 wins", Rps.play("rock", "paper"))
  end

  def test_rock_scissors
    assert_equal( "Player 1 wins", Rps.play("rock", "scissors"))
  end

  def test_paper_paper
    assert_equal( "Draw", Rps.play("paper", "paper"))
  end

  def test_paper_scissors
    assert_equal( "Player 2 wins", Rps.play("paper", "scissors"))
  end

  def test_paper_rock
    assert_equal( "Player 1 wins", Rps.play("paper", "rock"))
  end

  def test_scissors_scissors
    assert_equal( "Draw", Rps.play("scissors", "scissors"))
  end

  def test_scissors_rock
    assert_equal( "Player 2 wins", Rps.play("scissors", "rock"))
  end

  def test_scissors_paper
    assert_equal( "Player 1 wins", Rps.play("scissors", "paper"))
  end

  # def test_random_rock
  #   assert_equal("rock", Rps.random)
  # end
  #
  # def test_random_paper
  #   assert_equal("paper", Rps.random)
  # end
  #
  # def test_random_scissors
  #   assert_equal("scissors", Rps.random)
  # end

  def test_translate
    assert_equal( "rock", Rps.translate("9467812"))
    assert_equal( "paper", Rps.translate("1063289"))
    assert_equal( "scissors", Rps.translate("4738926"))
  end
  
end
