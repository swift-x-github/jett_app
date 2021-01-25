class SellController < ApplicationController
  def index
    @properties = Property.where(prop_deteils_property_type: 2)
  end

  def search_by_place
    @properties = Property.where(prop_deteils_property_type: 2)
  end

  def search_by_place_oba
    @properties = Property.where({ prop_deteils_property_type: "2", mahalle_index: "4" } )
  end

  def search_by_place_kestel
    @properties = Property.where({ prop_deteils_property_type: "2", mahalle_index: "2" } )
  end

  def search_by_place_tosmur
    @properties = Property.where({ prop_deteils_property_type: "2", mahalle_index: "5" } )
  end


  def search_by_type
    @properties = Property.where(prop_deteils_property_type: 2)
  end

  def search_by_type_flats
    @properties = Property.where({ prop_deteils_property_type: "2", prop_deteils_property_status: "1" } )
  end

  def search_by_type_villas
    @properties = Property.where({ prop_deteils_property_type: "2", prop_deteils_property_status: "2" } )
  end

  def search_by_type_land
    @properties = Property.where({ prop_deteils_property_type: "2", prop_deteils_property_status: "4" } )
  end


end
