class Owner < ActiveRecord::Base
  validates :name, presence: true

  has_many :adoptions
  has_many :pets, through: :adoptions
end
