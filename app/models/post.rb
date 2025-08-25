class Post < ApplicationRecord
  belongs_to :theme
  validates :content, presence: true, length: { maximum: 255 }
end
