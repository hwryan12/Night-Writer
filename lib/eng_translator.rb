require_relative "alphabet"

class EngTranslator < Alphabet
  attr_reader :alphabet

  def initialize(input)
    @alphabet = super
  end

  def convert_to_array(input)
    input.each_char.reduce([]) do |collection_of_eng_chars, eng_character|
      collection_of_eng_chars << @alphabet[eng_character]
    end
  end

  def braille_top_line(input)
    formatted_braille = convert_to_array(input).compact
    top_line = []
    formatted_braille.each do |character|
      top_line << character[0]
    end
    top_line
  end

  def braille_middle_line(input)
    formatted_braille = convert_to_array(input).compact
    middle_line = []
    formatted_braille.each do |character|
      middle_line << character[1]
    end
    middle_line
  end

  def braille_bottom_line(input)
    formatted_braille = convert_to_array(input).compact
    bottom_line = []
    formatted_braille.each do |character|
      bottom_line << character[2]
    end
    bottom_line
  end
  
  def braille_array_to_string(input)
    top_line = braille_top_line(input)
    middle_line = braille_middle_line(input)
    bottom_line = braille_bottom_line(input)
    translation = ""
    while top_line.length > 0
      translation += (top_line.shift(20).join + "\n" + middle_line.shift(20).join + "\n" + bottom_line.shift(20).join)
      translation += "\n" if top_line.length > 0
    end
    translation
  end
end