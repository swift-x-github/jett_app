class CreateGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :galleries do |t|
      t.integer :property_id
      t.string :img
      t.timestamps
    end

  end
end
