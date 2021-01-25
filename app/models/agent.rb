class Agent < ApplicationRecord
  belongs_to :account
  validates :shortname,       presence: true  , length: { maximum: 10 }
  validates :fullname,        presence: true  , length: { maximum: 30 }
  validates :description,     presence: true  , length: { maximum: 100 }
  validates :address,         presence: true  , length: { maximum: 100 }
  validates :tel,             presence: true  , length: { maximum: 15 }
 


  validates :email,  presence: true , email: true , uniqueness: true
end
