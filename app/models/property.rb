class Property < ActiveRecord::Base
  #require 'google-qr'
  belongs_to :account
  #has_many :galleries
  #belongs_to :category
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
 
  
  validates_date :add_details_last_remodel_year,      on_or_before: lambda { Date.current },  presence: true 
  validates_date :prop_deteils_year_built,            on_or_before: lambda { Date.current },  presence: true
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
  

  validates :name,                           presence: true,  length: { maximum: 250 }
  validates :price,                          presence: true,  numericality: true

  validates :address,                        presence: true,  length: { maximum: 350 }
  validates :rooms,              allow_nil: true,  numericality: { only_integer: true }
  validates :bathrooms,          allow_nil: true,  numericality: { only_integer: true }
  validates :account_id,          presence: true,  numericality: { only_integer: true }
  
  validates :property_id,         presence: true,  uniqueness: true, length: { maximum: 6 }
  validates :description,         allow_nil: true, length: { maximum: 1500 }
  

  validates :prop_deteils_garage,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_deteils_garage_size,         allow_nil: true,  numericality: true
  
  validates :prop_deteils_property_type,       presence: true,  numericality: { only_integer: true }

  validates :prop_deteils_property_status,     presence: true,  numericality: { only_integer: true }

  validates :add_details_deposit,         allow_nil: true,  numericality: true

  validates :add_details_pool_size,         allow_nil: true,   numericality: true
  validates :add_details_additional_rooms,  allow_nil: true,  length: { maximum: 350 }

  validates :add_details_amenities,         allow_nil: true,  length: { maximum: 350 }

  validates :add_details_equipment,         allow_nil: true, length: { maximum: 350 }


  validates :prop_f_air_cond,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_f_barbeque,         allow_nil: true,   numericality: { only_integer: true }
  validates :prop_f_dryer,         allow_nil: true, numericality: { only_integer: true }
  validates :prop_f_gym,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_f_laundry,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_f_lawn,         allow_nil: true,  numericality: { only_integer: true }

  validates :prop_f_microwave,         allow_nil: true,   numericality: { only_integer: true }
  validates :prop_f_outdoor_shower,         allow_nil: true,   numericality: { only_integer: true }
  validates :prop_f_refrigerator,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_f_swimming_pool,         allow_nil: true,  numericality: { only_integer: true }
  validates :prop_f_tv_cable,         allow_nil: true,   numericality: { only_integer: true }

  validates :prop_f_washer,         allow_nil: true,   numericality: { only_integer: true }
  validates :prop_f_wi_fi,         allow_nil: true,   numericality: { only_integer: true }
  validates :prop_f_window_cover,         allow_nil: true,   numericality: { only_integer: true }

  validates :youtube_link,         allow_nil: true, length: { maximum: 350 }

  validates :bedrooms,         allow_nil: true,   numericality: { only_integer: true }

  validates :postal_index,         allow_nil: true,  numericality:  { only_integer: true }
  
  validates :country_index,         allow_nil: true,  numericality: { only_integer: true }
  validates :il_index,         allow_nil: true,  numericality: { only_integer: true }
  validates :ilce_index,         allow_nil: true,  numericality: { only_integer: true }
  validates :mahalle_index,         allow_nil: true,  numericality: { only_integer: true }
  validates :street_name,         allow_nil: true, length: { maximum: 350 }
  validates :house_number_index,         allow_nil: true,   length: { maximum: 50 }
  validates :latitude,         allow_nil: true,   numericality: true
  validates :longitude,         allow_nil: true,   numericality: true
  







end
