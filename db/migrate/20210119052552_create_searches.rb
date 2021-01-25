class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.integer :prop_deteils_property_type_id
      t.integer :prop_deteils_property_status_id
      t.integer :mahale_id
      t.decimal :min_price
      t.decimal :max_price

      t.timestamps
    end
  end
end
