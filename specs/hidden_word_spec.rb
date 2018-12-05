require('minitest/autorun')
require('minitest/rg')
require_relative('../hidden_word')

class HiddenWordTest < MiniTest::Test

  def setup
    @hidden_word = HiddenWord.new("CodeClan")
  end

  def test_return_hidden_word
    assert_equal("CodeClan", @hidden_word.answer)
  end

end
