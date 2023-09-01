class Publication < ApplicationRecord
  belongs_to :departament
  belongs_to :user
  has_many :images, as: :imageable
  

end
