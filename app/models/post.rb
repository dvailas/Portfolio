class Post < ApplicationRecord
  belongs_to :category

  validates :title, :body, :category, presence: true

  mount_uploader :image, ImageUploader
end
