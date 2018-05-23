class User < ApplicationRecord
  acts_as_voter
  
  has_many :timestamps
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
