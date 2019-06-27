class Post < ApplicationRecord
  # associations
  belongs_to :category

  # validations
  validates :title, :category, presence: true
end
