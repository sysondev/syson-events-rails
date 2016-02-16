class User < ActiveRecord::Base
  has_many :attendants
  has_many :events, through: :attendants

  validates :email, :name, presence: true
end
