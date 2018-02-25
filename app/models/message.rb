class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader


  def create_time
    created_at.strftime("%Y/%m/%d %H:%M")
  end
end
