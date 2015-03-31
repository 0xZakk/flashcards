class Card < ActiveRecord::Base
  belongs_to :deck

  def to_s
    return name
  end
end