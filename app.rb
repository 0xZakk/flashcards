require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/deck'

def menu
  puts "Choose an option:
  1. Create a new deck
  2. View a deck
  3. Edit a deck
  4. Delete a deck
  5. View scores
  0. Quit"
  return gets.chomp
end

def create_deck
  deck_attr = {}
  puts "What is the name of the new deck?"
  deck_attr[:name] = gets.chomp 
  deck_attr[:score] = 0
  return deck_attr
end

#
# => Figure out how to set defaults in AR
# => :score default = 0

def get_deck
  puts "Which deck would you like to view?"
  puts Deck.all
  deck_selection = gets.chomp
  return Deck.find_by(name: deck_selection)
end

loop do

  choice = menu

  case choice
  when "1" # Create a new deck
    new_deck = Deck.create(create_deck)
  when "2" # View a deck
    deck = get_deck
    puts deck.cards
  when "3" # Edit a deck
    deck = get_deck
    

  when "4" # Delete a deck
    deck = get_deck
    deck.destroy
  when "5" # View scores
    deck = get_deck
    puts deck.score
  when "0" # Quit
    break
  end
end





