class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = %w[admin vendedor].freeze

  enum role: { admin: 'admin', vendedor: 'vendedor' }

  def admin?
    role == 'admin'
  end
  
  def vendedor?
    role == 'vendedor'
  end


  has_many :clients
  has_many :publications

  validates :name, presence: true
  validates :phone, presence: true
  
end
