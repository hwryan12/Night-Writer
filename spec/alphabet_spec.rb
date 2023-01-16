require_relative 'spec_helper'

RSpec.describe Alphabet do
  let(:alphabet) { Alphabet.new("message") }
  describe "#initialize" do
    it "exists" do
      expect(alphabet).to be_instance_of(Alphabet)
    end

    it "has an english to braille alphabet as a hash" do
      expect(alphabet.alphabet).to be_a(Hash)
    end

    it "has keys of English letters and values of braille letters" do
      expect(alphabet.alphabet["h"]).to eq(["0.", "00", ".."])
      expect(alphabet.alphabet["w"]).to eq([".0", "00", ".0"])
      expect(alphabet.alphabet["r"]).to eq(["0.", "00", "0."])
    end
  end
end