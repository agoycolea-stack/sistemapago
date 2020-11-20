class CreatePurchaseOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_orders do |t|
      t.decimal :total_amount
      t.integer :status
      t.string :code

      t.timestamps
    end
  end
end
