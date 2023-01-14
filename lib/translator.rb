require_relative "alphabet"
class Translator
  attr_reader :alphabet
  
  def initialize
    @alphabet = Alphabet.new
  end
end