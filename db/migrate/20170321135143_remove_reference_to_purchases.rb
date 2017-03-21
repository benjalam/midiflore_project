class RemoveReferenceToPurchases < ActiveRecord::Migration[5.0]
  def change
    remove_reference :purchases, :suppliers
    remove_reference :purchases, :products
  end
end
