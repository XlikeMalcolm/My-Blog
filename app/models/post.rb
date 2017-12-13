class Post < ApplicationRecord
  belongs_to :category
  has_many :comments

  mount_uploader :image, ImageUploader

  validates :name, :presence => true
  validates :title, :presence => true, :length => {:minimum => 3}
end
