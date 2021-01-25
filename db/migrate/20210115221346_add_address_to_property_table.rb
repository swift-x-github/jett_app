class AddAddressToPropertyTable < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :postal_index, :string
    add_column :properties, :country_index, :text
    add_column :properties, :il_index, :text
    add_column :properties, :ilce_index, :text
    add_column :properties, :mahalle_index, :text
    add_column :properties, :street_name, :text
    add_column :properties, :house_number_index, :text
  end
end
