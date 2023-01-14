require_relative 'spec_helper'

RSpec.describe "Alphabet" do
  let(:alphabet) { Alphabet.new }
  describe "#initialize" do
    it "exists" do
      expect(alphabet).to be_insatnce_of(Alphabet)
    end
  end
end