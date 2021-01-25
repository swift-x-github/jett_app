class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.string :capital
      t.string :president
      t.string :currency_id

      t.timestamps
    end
  end
end
