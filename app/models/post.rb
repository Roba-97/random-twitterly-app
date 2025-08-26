class Post < ApplicationRecord
  belongs_to :theme
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 255 }
end
