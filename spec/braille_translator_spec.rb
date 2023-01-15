require_relative 'spec_helper'

RSpec.describe BrailleTranslator do
  let(:translator) { BrailleTranslator.new("message") }

  describe "#initalize" do
    it "exists" do
      expect(translator).to be_instance_of(BrailleTranslator)
    end
  end
end