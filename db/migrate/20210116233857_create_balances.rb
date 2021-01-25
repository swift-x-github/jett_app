class CreateBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :balances do |t|
      t.integer :account_index
      t.float :amount
      t.integer :currency_index

      t.timestamps
    end
  end
end
