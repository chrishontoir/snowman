class Game
  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word, guessed_letters=[])
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = guessed_letters
  end

  def get_input_from_player
    @input = gets.chomp
    return @input
  end

  def guessed_letters_length
    return @guessed_letters.length
  end



end
