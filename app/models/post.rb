class Post < ApplicationRecord
  validates :title, presence: true
  validates :category_name, presence: true
  scope :recent, -> {order("created_at DESC")}

  belongs_to :category
end
