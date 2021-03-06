class Message < ApplicationRecord
  has_one_attached :image
  belongs_to :room
  belongs_to :user

  validates :content, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end
end
