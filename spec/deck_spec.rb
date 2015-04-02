require_relative 'spec_helper'
require "pry"

describe Deck do
  subject(:foods_deck) {Deck.find_by(name: "Spanish Foods")}
  subject(:foods_cards) {foods_deck.cards}

  describe "has name" do
    it "has a name" do
      expect(foods_deck.name).to eq("Spanish Foods")
    end
  end
end
