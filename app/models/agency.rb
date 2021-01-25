class Agency < ApplicationRecord
  belongs_to :account
  
  validates :account_id, uniqueness: true,  numericality: { only_integer: true }
  validates :name,         presence: true , length: { maximum: 10 }
  validates :description,  presence: true , length: { maximum: 150 }
  validates :address,      presence: true , length: { maximum: 100 }


  validates :email, presence: true,  email: true  , uniqueness: true

end
