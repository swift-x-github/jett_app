class CreateMahales < ActiveRecord::Migration[6.0]
  def change
    create_table :mahales do |t|
      t.string :name
      t.text :description
      t.references :ilce, null: false, foreign_key: true

      t.timestamps
    end
  end
end
