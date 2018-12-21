class Post < ApplicationRecord
  belongs_to :category

  validates :title, :body, :category, presence: true
end
