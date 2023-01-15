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
end