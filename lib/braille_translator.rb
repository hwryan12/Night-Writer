require_relative "alphabet"
class BrailleTranslator < Alphabet
  attr_reader :alphabet

  def initialize(input)
    @alphabet = super.invert
  end

  def convert_to_array(input)
    top_line = input.split().find_all.each_with_index { |character, index| index % 3 == 0 }.join
    mid_line = input.split().find_all.each_with_index { |character, index| index % 3 == 1 }.join
    bot_line = input.split().find_all.each_with_index { |character, index| index % 3 == 2 }.join
    braille_collection = []
    until top_line.empty?
      braille_collection << top_line.slice!(0..1)
      braille_collection << mid_line.slice!(0..1)
      braille_collection << bot_line.slice!(0..1)
    end
    braille_collection.join.scan(/.{6}/)
  end
  
  def translate_to_english(input)
    translation = ""
    input.each do |character|
      translation << @alphabet[character.chars.each_slice(2).map(&:join)]
    end
    translation
  end

  def line_break(input)
    input.chars.each_slice(80).map(&:join).join('\n')
  end
end
        
        
        