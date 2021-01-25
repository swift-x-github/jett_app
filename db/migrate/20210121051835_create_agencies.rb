class CreateAgencies < ActiveRecord::Migration[6.0]
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :email
      t.string :website
      t.string :tel
      t.string :country_id
      t.float :balance
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
