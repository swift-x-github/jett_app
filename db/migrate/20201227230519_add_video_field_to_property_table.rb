class AddVideoFieldToPropertyTable < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :youtube_link, :text
  end
end
