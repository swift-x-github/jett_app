class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :shortname
      t.string :fullname
      t.text :description
      t.string :address
      t.string :email
      t.string :website
      t.string :tel
      t.integer :country_id
      t.float :balance
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
