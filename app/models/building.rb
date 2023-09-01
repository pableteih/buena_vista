class Building < ApplicationRecord
  belongs_to :comuna
  has_and_belongs_to_many :services

  
end
