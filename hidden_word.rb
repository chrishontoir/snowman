class HiddenWord

  attr_accessor :answer

  def initialize(answer)
    @answer = answer
    @output = ""
  end

  def check_guess(letter)
    if letter == "a"
      return true
    elsif letter == "b"
      return false
    end
  end

  def answer_length
    @answer.length
  end

  def replace_with_stars(hidden_word)
    chars = hidden_word.split("")
    for char in chars
      @output.concat("*")
    end
    return @output
  end

  def replace_with_guessed_letters(hidden_word, guessed_letters)
    chars = hidden_word.split("")
    for char in chars
      if guessed_letters.include?(char)
        @output.concat(char)
      else
        @output.concat("*")
      end
    end
    p @output
    return @output
  end

end
