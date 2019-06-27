class Category < ApplicationRecord
    # associations
    has_many :posts

    # validations
    validates  :name, presence: true
end
