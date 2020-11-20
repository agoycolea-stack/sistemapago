class PurchaseOrder < ApplicationRecord
  has_many :purchase_order_products
  has_many :products, through: :purchase_order_products
  enum status: [:pending, :open, :paid, :cancelled]
end
