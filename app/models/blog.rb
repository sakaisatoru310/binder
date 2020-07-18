class Blog < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  def self.search(search)
    return Blog.all unless search
    Blog.where('title LIKE(?)', "%#{search}%")
  end
end
