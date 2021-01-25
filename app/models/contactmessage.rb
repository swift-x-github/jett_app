class Contactmessage < ApplicationRecord
    validates :first_name,      presence: true , length: { maximum: 50 }
    validates :email,           presence: true , email: true 
    validates :subject,         presence: true , length: { maximum: 100 }
    validates :message,         presence: true , length: { maximum: 500 }

    validates_uniqueness_of :ip_address, scope: [ :email] # ip & exp validation
   
end
