class Theme < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :title,  uniqueness: true

  def self.random_theme
    self.order("RANDOM()").first
  end
end
