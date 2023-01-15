require_relative 'spec_helper'

RSpec.describe EngTranslator do
  let(:translator) { EngTranslator.new("message") }
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_instance_of(EngTranslator)
    end

    it "instantiates an English to braille alphabet on creation" do
      expect(translator.alphabet).to be_instance_of(Alphabet)
    end
  end
  
  describe "#convert_to_array" do
    # it "has an empty array of braille characters by default" do
    #   expect(translator.array_of_braille).to eq([])
    # end
    
    it "returns the alphabet hash as an array of braille letters" do
      input = "hello"
      expected = [
        ["0.", "00", ".."],
        ["0.", ".0", ".."],
        ["0.", "0.", "0."],
        ["0.", "0.", "0."],
        ["0.", ".0", "0."]
      ]

      expect(translator.convert_to_array(input)).to eq(expected)
    end
  end

  describe "#braille_array_to_string" do
    it "can return the array of braille as a string with line breaks" do
      input = "hello"
      expected = "0.0.0.0.0.\n00.00.0..0\n....0.0.0."

      expect(translator.braille_array_to_string(input)).to eq(expected)
    end
  end

  describe "#line_break" do
    it "will break the line of text into another array if it is more than 80 characters long" do
      input = ".................................................................................."
      expected = "................................................................................\n.."  
      expect(translator.line_break(input)).to eq(expected)  
    end
  end
end