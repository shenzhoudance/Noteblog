class Pin < ApplicationRecord
  # mount_uploader :image, ImageUploader

  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # def previous_pin
  #   self.class.where("created_at < ?", created_at).order(created_at: :desc).first
  # end
  #
  # def next_pin
  #   self.class.where("created_at > ?", created_at).order(created_at: :asc).first
  # end
end
