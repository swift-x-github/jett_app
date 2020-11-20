class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|

      t.string :name
      t.string :address
      t.integer :price
      t.integer :rooms
      t.integer :bathrooms
      t.references :account
      t.string :photo
      t.timestamps
    end
  end
end
