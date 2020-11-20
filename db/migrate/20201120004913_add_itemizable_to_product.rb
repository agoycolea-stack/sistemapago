class AddItemizableToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :itemizable, polymorphic: true
  end
end
