require_relative 'spec_helper'

RSpec.describe BrailleTranslator do
  let(:translator) { BrailleTranslator.new }

  describe "#initalize" do
    it "exists" do
      expect(translator).to be_instance_of(BrailleTranslator)
    end

    it "instantiates a braille to English alphabet on creation" do
      expect(translator.alphabet).to be_instance_of(Alphabet)
    end
  end

  describe "#convert_to_array" do
    it "returns the braille message as an an array of arrays" do
      input = "
              0.0.0.0.0.
              00.00.0..0
              ....0.0.0."
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
end