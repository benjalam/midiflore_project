class RemoveReferenceToInventoryTransactions < ActiveRecord::Migration[5.0]
  def change
    remove_reference :inventory_transactions, :order_detail
    remove_reference :inventory_transactions, :purchase_details
    remove_reference :inventory_transactions, :manual_details
    remove_reference :inventory_transactions, :products
  end
end
