class Card < ActiveRecord::Base
  belongs_to :deck

  def to_s
    return "#{front} - #{back}"
  end
end