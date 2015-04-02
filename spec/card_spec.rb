require_relative 'spec_helper'


describe Card do
  subject(:foods_deck) {Deck.find_by(name: "Spanish Foods")}
  subject(:foods_cards) {foods_deck.cards}

  describe "has cards" do
    it "should have a front" do
      expect(foods_cards.first.front).to eq("Pina")
    end

    it "should have a back" do
      expect(foods_cards.first.back).to eq("Pineapple")
    end

    it "should have both" do
      expect(foods_cards.first.to_s).to eq("Pina - Pineapple")
    end
  end

end
