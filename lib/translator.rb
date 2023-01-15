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
    end
  end
  
  def braille_array_to_string(input ,braille_array)
    formatted_braile = convert_to_array(input)
    braille_array = ""
    formatted_braile.each do |character|
      braille_array += character[0]
    end
    braille_array += "\n"
    formatted_braile.each do |character|
      braille_array += character[1]
    end
    braille_array += "\n"
    formatted_braile.each do |character|
      braille_array += character[2]
    end
    braille_array
  end
end