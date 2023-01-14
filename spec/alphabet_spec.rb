require_relative 'spec_helper'

RSpec.describe "Alphabet" do
  let(:alphabet) { Alphabet.new }
  describe "#initialize" do
    it "exists" do
      expect(alphabet).to be_instance_of(Alphabet)
    end

    it "has an english to braille alphabet as a hash" do
      expect(alphabet.english_alphabet).to be_a(Hash)
    end
  end
end