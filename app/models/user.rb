class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :image
  has_many :messages
  has_many :lists
  has_many :user_rooms
  has_many :rooms, through: :user_rooms

  validates :nickname, presence: true
  
end
