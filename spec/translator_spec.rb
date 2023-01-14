require_relative 'spec_helper'

RSpec.describe Translator do
  let(:translator) { Translator.new }
  describe "#initialize" do
    it "exists" do
      expect(translator).to be_instance_of(Translator)
    end
  end
end