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
  
  def braille_array_to_string(input)
    formatted_braile = convert_to_array(input).compact
    top_line = []
    formatted_braile.each do |character|
      top_line << character[0]
    end
    middle_line = []
    formatted_braile.each do |character|
      middle_line << character[1]
    end
    bottom_line = []
    formatted_braile.each do |character|
      bottom_line << character[2]
    end
    place_holder = []
    place_holder << "#{top_line.join}\n#{middle_line.join}\n#{bottom_line.join}"
    place_holder.join
  end
  
  def line_break(input)
    input.scan(/.{80}|.+/).join("\n")
  end
end