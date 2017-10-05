class Pet < ActiveRecord::Base
  validates :name, presence: true
  validates :species, presence: true

  has_one :adoption
  has_one :owner, through: :adoption
end
