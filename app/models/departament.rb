class Departament < ApplicationRecord
  belongs_to :client
  belongs_to :building
  belongs_to :status
end
