require('minitest/autorun')
require('minitest/rg')
require_relative('../game')
require_relative('../hidden_word')
require_relative('../player')

class GameTest < MiniTest::Test
  def setup
    @player = Player.new("Conor", 6)
    @hidden_word = HiddenWord.new("CodeClan").downcase
    @game = Game.new(@player, @hidden_word, guessed_letters[])
  end
end
