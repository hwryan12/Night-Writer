require_relative 'spec_helper'

RSpec.describe Translator do
  let(:translator) { Translator.new("message") }
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_instance_of(Translator)
    end

    it "instantiates an English to braille alphabet on creation" do
      expect(translator.alphabet).to be_instance_of(Alphabet)
    end
  end
  
  describe "#convert_to_array" do
    it "has an empty array of braille characters by default" do
      expect(translator.array_of_braille).to eq([])
    end
    
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

  describe "#braille_array_to_string"
    it "can return the array of braille as a string with line breaks" do
      input = "hello"
      expected = ["0.0.0.0.0./n00.00.0..0/n....0.0.0."]

      translator.convert_to_array(input)

      expect(translator.braille_array_to_string).to eq(expected)
    end
end