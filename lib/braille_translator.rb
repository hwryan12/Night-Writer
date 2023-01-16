require_relative "alphabet"
class BrailleTranslator < Alphabet
  attr_reader :alphabet

  def initialize(input)
    @alphabet = super.invert
  end

  def convert_to_array(input)
    message = input.split()
    braille_collection = message.map do |characters|
      characters.chars.each_slice(2).map(&:join)
    end
    braille_collection.transpose
  end

  def translate_to_english(input)
    translation = []
    input.each do |braille_character|
      @alphabet.find do |braille_eng_pair|
        translation << braille_eng_pair[1] if braille_eng_pair[0] == braille_character
      end
    end
    translation.join
  end
end
        
        
        