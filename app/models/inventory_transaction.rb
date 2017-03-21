class InventoryTransaction < ApplicationRecord
  belongs_to :products
  belongs_to :harvest_detail
  belongs_to :order_detail
  belongs_to :purchase_detail
  belongs_to :manual_detail
end
