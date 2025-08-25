class Theme < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :title,  uniqueness: true
end
