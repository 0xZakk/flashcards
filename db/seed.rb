require_relative '../app'
require_relative 'connection'

decks = Deck.create([
  {name: "Spanish Foods", score: 0},
  {name: "Spanish Travel", score: 0}
  ])

spanish_foods_deck = Deck.find_by(name: "Spanish Foods")
spanish_foods_cards = spanish_foods_deck.cards.create([
  {front: "Pina", back: "Pineapple", deck_id: spanish_foods_deck.id},
  {front: "Manzana", back: "Apple", deck_id: spanish_foods_deck.id},
  {front: "Aguacate", back: "Avocado", deck_id: spanish_foods_deck.id}
  ])

spanish_travel_deck = Deck.find_by(name: "Spanish Travel")
spanish_travel_cards = spanish_travel_deck.cards.create([
  {front: "Autobus", back: "Bus", deck_id: spanish_foods_deck.id},
  {front: "Auto", back: "Car", deck_id: spanish_foods_deck.id},
  {front: "Avion", back: "Airplane", deck_id: spanish_foods_deck.id}
  ])

