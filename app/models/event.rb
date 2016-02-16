class Event < ActiveRecord::Base
  has_many :attendants
  has_many :users, through: :attendants

  accepts_nested_attributes_for :attendants

  validates :title, :description, :starts_at, :ends_at, presence: true
end
