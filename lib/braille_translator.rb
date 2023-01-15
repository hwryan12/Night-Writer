require_relative "alphabet"
class BrailleTranslator
  attr_reader :alphabet

  def initialize
    @alphabet = Alphabet.new
  end
end