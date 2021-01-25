class AddIpToContactMessageTable < ActiveRecord::Migration[6.0]
  def change
    add_column :contactmessages, :ip_address, :string
  end
end
