require_relative 'spec_helper'

RSpec.describe BrailleTranslator do
  let(:translator) { BrailleTranslator.new("message") }

  describe "#initalize" do
    it "exists" do
      expect(translator).to be_instance_of(BrailleTranslator)
    end

    it "instantiates an inverted alphabet on creation" do
      expected = {
        ["0.", "..", ".."] => "a",
        ["0.", "0.", ".."] => "b",
        ["00", "..", ".."] => "c",
        ["00", ".0", ".."] => "d",
        ["0.", ".0", ".."] => "e",
        ["00", "0.", ".."] => "f",
        ["00", "00", ".."] => "g",
        ["0.", "00", ".."] => "h",
        [".0", "0.", ".."] => "i",
        [".0", "00", ".."] => "j",
        ["0.", "..", "0."] => "k",
        ["0.", "0.", "0."] => "l",
        ["00", "..", "0."] => "m",
        ["00", ".0", "0."] => "n",
        ["0.", ".0", "0."] => "o",
        ["00", "0.", "0."] => "p",
        ["00", "00", "0."] => "q",
        ["0.", "00", "0."] => "r",
        [".0", "0.", "0."] => "s",
        [".0", "00", "0."] => "t",
        ["0.", "..", "00"] => "u",
        ["0.", "0.", "00"] => "v",
        [".0", "00", ".0"] => "w",
        ["00", "..", "00"] => "x",
        ["00", ".0", "00"] => "y",
        ["0.", ".0", "00"] => "z",
        ["..", "..", ".."] => " ",
        ["..", "0.", ".."] => ",",
        ["..", "00", ".0"] => "."
      }

      expect(translator.alphabet).to eq(expected)
    end
  end

  describe "#convert_to_array" do
    it "returns the braille message as an an array of arrays" do
      input = "\n        0.0.0.0.0.\n        00.00.0..0\n        ....0.0.0."
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

  describe "#translate_to_english" do
    it "returns given array of braille letters as a string of English letters" do
    input = [
      ["0.", "00", ".."], 
      ["0.", ".0", ".."], 
      ["0.", "0.", "0."], 
      ["0.", "0.", "0."], 
      ["0.", ".0", "0."]
    ]
    expected = "hello"

    expect(translator.translate_to_english(input)).to eq(expected)
    end
  end
end