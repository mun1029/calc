class List < ApplicationRecord
  belongs_to :user
  has_many :rooms, dependent: :destroy
  validates :list_name, presence: true
end
