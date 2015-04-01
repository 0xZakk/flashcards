class Deck < ActiveRecord::Base
  has_many :cards, dependent: :destroy

  def to_s
    return name
  end

  # def name
  #   formatted_name = @name.capitalize
  #   return formatted_name
  # end

end