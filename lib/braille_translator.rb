require_relative "alphabet"
class BrailleTranslator
  attr_reader :alphabet

  def initialize
    @alphabet = Alphabet.new
  end

  def convert_to_array(input)
    text = input.split()
    new_array = text.map do |element|
      element.chars.each_slice(2).map(&:join)
    end
    new_array.transpose
  end
end