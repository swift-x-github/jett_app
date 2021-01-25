class DropFirma < ActiveRecord::Migration[6.0]
  def change
    drop_table :firma
  end
end
