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

  def convert_to_array(input)
    input.each_char.reduce([]) do |array, character|
      array << @alphabet.english_alphabet[character]
      # binding.pry
    end
  end
end