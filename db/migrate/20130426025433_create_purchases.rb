class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :purchase_number
      t.references :user
      t.references :fruit

      t.timestamps
    end
    add_index :purchases, :user_id
    add_index :purchases, :fruit_id
  end
end
