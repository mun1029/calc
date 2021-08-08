class Message < ApplicationRecord
  has_one_attached :image
  belongs_to :room
  belongs_to :user
end
