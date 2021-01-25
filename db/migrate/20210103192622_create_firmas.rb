class CreateFirmas < ActiveRecord::Migration[6.0]
  def change
    create_table :firmas do |t|
      t.string :shortname
      t.string :fullname
      t.text :description
      t.string :address
      t.string :email
      t.string :website
      t.string :tel
      t.string :whatsapp
      t.string :viber
      t.string :telegram

      t.timestamps
    end
  end
end
