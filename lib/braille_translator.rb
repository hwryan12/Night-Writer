require_relative "alphabet"
class BrailleTranslator < Alphabet
  attr_reader :alphabet

  def initialize(input)
    @alphabet = super.invert
  end

  def convert_to_array(input)
    text = input.split()
    new_array = text.map do |element|
      element.chars.each_slice(2).map(&:join)
    end
    new_array.transpose
  end

  def translate_to_english(input)
    helper = []
    input.each do |array|
      @alphabet.find do |character|
        helper << character[1] if character[0] == array
      end
    end
    helper.join
  end
end
        
        
        