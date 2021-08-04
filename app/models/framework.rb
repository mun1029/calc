class Framework < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :frame
  belongs_to :user, optional: true
end
