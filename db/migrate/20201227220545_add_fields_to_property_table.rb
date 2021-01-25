class AddFieldsToPropertyTable < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :property_id, :string, first: true
    add_column :properties, :description, :text, after: :address
    add_column :properties, :prop_deteils_property_size, :float, after: :account_id
    add_column :properties, :prop_deteils_year_built, :date, after: :prop_deteils_property_size
    add_column :properties, :prop_deteils_garage, :integer, after: :prop_deteils_year_built
    add_column :properties, :prop_deteils_garage_size, :float, after:  :prop_deteils_garage
    add_column :properties, :prop_deteils_property_type, :integer, after: :prop_deteils_garage_size
    add_column :properties, :prop_deteils_property_status, :integer, after: :prop_deteils_property_type
    add_column :properties, :add_details_deposit, :float, after: :prop_deteils_property_status
    add_column :properties, :add_details_pool_size, :integer, after: :add_details_pool_size
    add_column :properties, :add_details_additional_rooms, :text, after: :add_details_additional_rooms
    add_column :properties, :add_details_last_remodel_year, :date, after: :add_details_last_remodel_year
    add_column :properties, :add_details_amenities, :text, after: :add_details_last_remodel_year
    add_column :properties, :add_details_equipment, :text, after: :add_details_amenities
   

  end
end
