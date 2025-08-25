class Theme < ApplicationRecord
  validates :title,  uniqueness: true
end
