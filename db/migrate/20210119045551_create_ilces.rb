class CreateIlces < ActiveRecord::Migration[6.0]
  def change
    create_table :ilces do |t|
      t.string :name
      t.text :description
      t.references :il, null: false, foreign_key: true

      t.timestamps
    end
  end
end
