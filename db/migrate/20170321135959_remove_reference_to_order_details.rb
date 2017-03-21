class RemoveReferenceToOrderDetails < ActiveRecord::Migration[5.0]
  def change
    remove_reference :order_details, :orders
    remove_reference :order_details, :products
  end
end
