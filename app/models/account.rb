class Account < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable 
  
  validates :email, uniqueness: true,  email: true 
  

  has_many :properties, dependent: :destroy
  has_one :balance, dependent: :destroy
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }
  has_many :blogs,  dependent: :destroy            
  has_many :agents, dependent: :destroy
  has_one :agency,  dependent: :destroy
                    
  
  #validates_attachment_presence :avatar
  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png']
  
end

