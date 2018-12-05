require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../hidden_word')
require_relative('../player')

class GameTest < MiniTest::Test
  def setup
    @player = Player.new("Conor", 6)
    @hidden_word = HiddenWord.new("codeclan") #downcase to follow...
    @game = Game.new(@player, @hidden_word,[])
  end

  def test_get_player
    assert_equal(@player, @game.player)
  end

  def test_get_hidden_word
    assert_equal(@hidden_word, @game.hidden_word)
  end

  def test_get_guessed_letters
    assert_equal([], @game.guessed_letters)
  end

  def test_get_input_from_player
    assert_equal("a", @game.get_input_from_player)
  end



end
