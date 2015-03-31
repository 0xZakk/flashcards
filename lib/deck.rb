class Deck < ActiveRecord::Base
  has_many :cards
  
  def to_s
    return name
  end
end