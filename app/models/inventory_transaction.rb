class InventoryTransaction < ApplicationRecord
  belongs_to :products
  belongs_to :harvests
  belongs_to :order_detail
  belongs_to :purchase_details
  belongs_to :manual_details
end
