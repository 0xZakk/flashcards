require 'active_record'
require 'pg'
require 'pry'

require_relative 'db/connection'
require_relative 'lib/card'
require_relative 'lib/deck'

def get_user_input(prompt)
  puts prompt
  return gets.chomp
end

def under_construction
  puts "This section is under construction"
end

def menu
  puts "Choose an option:
  1. Play a deck
  2. Create a new deck
  3. View a deck
  4. Edit a deck
  5. Delete a deck
  6. View scores
  0. Quit"
  return gets.chomp
end

def build_deck
  deck_attr = {}
  deck_attr[:name] = get_user_input("What is the name of the new deck?") 
  deck_attr[:score] = 0
  return deck_attr
end

def build_card(deck_id)
  card_attr = {}
  card_attr[:deck_id] = deck_id
  card_attr[:front] = get_user_input("What should be on the front of the card?")
  card_attr[:back] = get_user_input("What should be on the back of the card?")
  return card_attr
end

def get_deck
  puts "Select from the following decks"
  puts Deck.all
  deck_selection = gets.chomp
  return Deck.find_by(name: deck_selection)
end

def get_card(deck)
  puts "Which card?"
  cards = deck.cards.order(:id)
  cards.each { |card| puts "#{card.id}. #{card.front}"}
  return Card.find_by(id: gets.chomp.to_i)
end

def get_deck_score
  deck_cards = get_deck.cards.order(:id)
  puts "Card  | Times Correct | Times Incorrect"
  deck_cards.each do |card|
    puts "#{card.front} |   #{card.times_right}   |   #{card.times_wrong} "
  end
end

def play_deck(cards)
  cards.each do |card|
    user_selection = get_user_input("Card Front: #{card.front}").to_s
    
    if user_selection == card.back
      puts "Correct!"

      current_score = card.times_right.to_i
      current_score = current_score + 1
      card.update(times_right: current_score)
    elsif user_selection != card.back
      puts "Incorrect!"
      puts "The correct answer is #{card.back}"

      current_score = card.times_wrong.to_i
      current_score = current_score + 1
      card.update(times_wrong: current_score)
    end
  end
end

def add_cards_to_deck(deck)
  loop do
    more_cards = get_user_input("Create another card? [y/n]")
    case more_cards
    when "y"
      Card.create(build_card(deck.id))      
    when "n"
      break
    else
      puts "Please select a valid option"
    end
  end

  return deck.cards
end

def edit_card(card)
  card.front = get_user_input("What should be the front?")
  card.back = get_user_input("What should be the back?")
  card.save  
end

loop do

  choice = menu

  case choice
  when "1" # Play a deck
    play_deck(get_deck.cards)
  when "2" # Create a new deck
    add_cards_to_deck(Deck.create(build_deck))
  when "3" # View a deck
    puts get_deck.cards.order(:id)
  when "4" # Edit a deck
    edit_card(get_card(get_deck))
  when "5" # Delete a deck
    get_deck.destroy
  when "6" # View scores
    get_deck_score
  when "0" # Quit
    break
  end
end
