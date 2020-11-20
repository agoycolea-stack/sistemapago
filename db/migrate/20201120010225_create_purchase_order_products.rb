class CreatePurchaseOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_order_products do |t|
      t.integer :quantity
      t.references :purchase_order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
