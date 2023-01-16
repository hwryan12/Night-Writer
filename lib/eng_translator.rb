require_relative "alphabet"

class EngTranslator
  attr_reader :alphabet,
              :message

  def initialize(message)
    @alphabet = Alphabet.new
    @message = message
  end

  def convert_to_array(input)
    input.each_char.reduce([]) do |array, character|
      array << @alphabet.english_alphabet[character]
    end
  end

  def braille_top_line(input)
    formatted_braile = convert_to_array(input).compact
    top_line = []
    formatted_braile.each do |character|
      top_line << character[0]
    end
    top_line
  end

  def braille_middle_line(input)
    formatted_braile = convert_to_array(input).compact
    middle_line = []
    formatted_braile.each do |character|
      middle_line << character[1]
    end
    middle_line
  end

  def braille_bottom_line(input)
    formatted_braile = convert_to_array(input).compact
    bottom_line = []
    formatted_braile.each do |character|
      bottom_line << character[2]
    end
    bottom_line
  end
  
  def braille_array_to_string(input)
    top_line = braille_top_line(input)
    middle_line = braille_middle_line(input)
    bottom_line = braille_bottom_line(input)
    place_holder = ""
    while top_line.length > 0
      # require "pry"; binding.pry
      place_holder += (top_line.shift(20).join + "\n" + middle_line.shift(20).join + "\n" + bottom_line.shift(20).join)
      place_holder += "\n" if top_line.length > 0
    end
    # require "pry"; binding.pry
    place_holder
  end
end