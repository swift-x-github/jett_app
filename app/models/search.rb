class Search < ActiveRecord::Base

  validates :keywords,  allow_nil: true,      length: { maximum: 250 }
  validates :prop_deteils_property_type_id,   allow_nil: true,  numericality: { only_integer: true }
  validates :prop_deteils_property_status_id, allow_nil: true,  numericality: { only_integer: true }


  validates :min_price,     allow_nil: true,  numericality: true
  validates :max_price  ,     allow_nil: true,  numericality: true


  def properties
    @properties ||= find_properties
  end
  
  private
  
  def find_properties
    properties = Property.all
    properties = properties.where("name ilike ?", "%#{keywords}%") if keywords.present?
    properties = properties.where(prop_deteils_property_type: prop_deteils_property_type_id) if prop_deteils_property_type_id.present?
    properties = properties.where(prop_deteils_property_status: prop_deteils_property_status_id) if prop_deteils_property_status_id.present?
    properties = properties.where("price >= ?", min_price) if min_price.present?
    properties = properties.where("price <= ?", max_price) if max_price.present?
    properties
  end
  

  
end
