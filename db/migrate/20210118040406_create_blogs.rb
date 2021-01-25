class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :description
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
