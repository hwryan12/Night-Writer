require_relative 'spec_helper'

RSpec.describe EngTranslator do
  let(:translator) { EngTranslator.new("message") }
  
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_instance_of(EngTranslator)
    end

    it "instantiates an English to braille alphabet on creation" do
      expected = {
        "a" => ["0.", "..", ".."],
        "b" => ["0.", "0.", ".."],
        "c" => ["00", "..", ".."],
        "d" => ["00", ".0", ".."],
        "e" => ["0.", ".0", ".."],
        "f" => ["00", "0.", ".."],
        "g" => ["00", "00", ".."],
        "h" => ["0.", "00", ".."],
        "i" => [".0", "0.", ".."],
        "j" => [".0", "00", ".."],
        "k" => ["0.", "..", "0."],
        "l" => ["0.", "0.", "0."],
        "m" => ["00", "..", "0."],
        "n" => ["00", ".0", "0."],
        "o" => ["0.", ".0", "0."],
        "p" => ["00", "0.", "0."],
        "q" => ["00", "00", "0."],
        "r" => ["0.", "00", "0."],
        "s" => [".0", "0.", "0."],
        "t" => [".0", "00", "0."],
        "u" => ["0.", "..", "00"],
        "v" => ["0.", "0.", "00"],
        "w" => [".0", "00", ".0"],
        "x" => ["00", "..", "00"],
        "y" => ["00", ".0", "00"],
        "z" => ["0.", ".0", "00"],
        " " => ["..", "..", ".."],
        "," => ["..", "0.", ".."],
        "." => ["..", "00", ".0"]
      }

      expect(translator.alphabet).to eq(expected)
    end
  end
  
  describe "#convert_to_array" do
    it "returns the alphabet hash as an string of braille letters" do
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

  describe "#braille_line_position helpers" do
    it "can return the array of the top line of braille characters" do
      input = "hello"
      expected = ["0.", "0.", "0.", "0.", "0."]

      expect(translator.braille_top_line(input)).to eq(expected)
    end

    it "can return the array of the middle line of braille characters" do
      input = "hello"
      expected = ["00", ".0", "0.", "0.", ".0"]

      expect(translator.braille_middle_line(input)).to eq(expected)
    end

    it "can return the array of the bottom line of braille characters" do
      input = "hello"
      expected = ["..", "..", "0.", "0.", "0."]

      expect(translator.braille_bottom_line(input)).to eq(expected)
    end
  end

  describe "#braille_array_to_string" do
    it "can return the array of braille as a string with line breaks" do
      input = "hello"
      expected = "0.0.0.0.0.\n00.00.0..0\n....0.0.0."

      expect(translator.braille_array_to_string(input)).to eq(expected)
    end
  end
end