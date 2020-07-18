class Blog < ApplicationRecord
  validates :title, :content, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :user
  def self.search(search)
    Blog.where('title LIKE ?', "%#{search}%")
  end
end
