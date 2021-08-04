class Frame < ActiveHash::Base
  self.data = [
    { id: 1, name: '1' }, 
    { id: 2, name: '2' },
  ]
 
  include ActiveHash::Associations
  has_many :Frameworks
 
end