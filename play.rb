require_relative('./game')
require_relative('./hidden_word')
require_relative('./player')



p "Enter a word: "
word_to_guess = gets.chomp
@hidden_word = HiddenWord.new(word_to_guess)

p "Enter your name: "
player_name = gets.chomp
@new_player = Player.new(player_name, 6)

p "Hi #{@new_player.player_name}, you have #{@new_player.player_lives} lives remaining. "

@game = Game.new(@new_player, @hidden_word,[])

"Guess a letter: "
guessed_letter = gets.chomp

  @game.compare_input_with_array(guessed_letter)
  @hidden_word.replace_with_guessed_letters(@hidden_word.answer, @game.guessed_letters)
