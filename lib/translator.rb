require_relative "alphabet"
class Translator
  attr_reader :alphabet,
              :message,
              :array_of_braille

  def initialize(message)
    @alphabet = Alphabet.new
    @message = message
    @array_of_braille = []
  end

  def convert_to_array

  end
end