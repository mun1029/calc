class List < ApplicationRecord
  belongs_to :user
  has_many :rooms
  validates :list_name, presence: true
end
