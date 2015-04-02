class Deck < ActiveRecord::Base
  has_many :cards, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true

  def to_s
    return name
  end

end