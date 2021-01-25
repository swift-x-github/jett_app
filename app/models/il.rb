class Il < ApplicationRecord
  belongs_to :country
  has_many :ilces
end
