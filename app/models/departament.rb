class Departament < ApplicationRecord
  belongs_to :client
  belongs_to :building
  belongs_to :status
  has_many :publications
  has_many :images
end
