require_relative 'spec_helper'

RSpec.describe Translator do
  let(:translator) { Translator.new }
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_instance_of(Translator)
    end

    it "instantiates an English to braille alphabet on creation" do
      expect(translator.alphabet).to be_instance_of(Alphabet)
    end
  end
end