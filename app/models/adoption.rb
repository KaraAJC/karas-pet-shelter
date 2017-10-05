class Adoption < ActiveRecord::Base
  validates :owner_id, presence: true
  validates :pet_id, presence: true

  belongs_to :pet
  belongs_to :owner
end
