class CreateIls < ActiveRecord::Migration[6.0]
  def change
    create_table :ils do |t|
      t.string :name
      t.text :description
      t.string :capital
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
