class CreateContactmessages < ActiveRecord::Migration[6.0]
  def change
    create_table :contactmessages do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :subject
      t.text :message
      t.integer :status

      t.timestamps
    end
  end
end
