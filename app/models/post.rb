class Post < ApplicationRecord
  belongs_to :theme
  before_save :set_nickname_to_nil_if_blank
  default_scope -> { order(created_at: :desc) }
  validates :content, presence: true, length: { maximum: 255 }
  validates :nickname, length: { maximum: 31 }, allow_nil: true

  private
    def set_nickname_to_nil_if_blank
      self.nickname = nil if self.nickname.blank?
    end
end
