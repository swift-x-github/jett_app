class AddNewFieldsToAccount < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :title, :string
    add_column :accounts, :phone1, :string
    add_column :accounts, :phone2, :string
    add_column :accounts, :message, :string
    add_column :accounts, :soc_facebook, :string
    add_column :accounts, :soc_twitter, :string
    add_column :accounts, :soc_linkedin, :string
    add_column :accounts, :soc_google, :string
    add_column :accounts, :soc_pinterest, :string
    add_column :accounts, :soc_instagram, :string
    add_column :accounts, :soc_telegram, :string
    add_column :accounts, :soc_viber, :string
    add_column :accounts, :soc_whatsapp, :string
  end
end
