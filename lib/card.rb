class Card < ActiveRecord::Base
  belongs_to :deck
  validates :front, uniqueness: true, presence: true
  validates :back, uniqueness: true, presence: true

  def to_s
    return "#{id}. #{front} - #{back}"
  end
end