class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :status
      t.datetime :paid_at
      t.references :payment_method, foreign_key: true

      t.timestamps
    end
  end
end
