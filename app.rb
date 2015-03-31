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

loop do
  
  choice = menu

  case choice
  when "1" # Create a new deck

  when "2" # View a deck

  when "3" # Edit a deck

  when "4" # Delete a deck

  when "5" # View scores

  when "0" # Quit
    break
  end
end