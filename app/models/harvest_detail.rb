class HarvestDetail < ApplicationRecord
  belongs_to :product
  belongs_to :harvest
  has_many :inventory_transactions
end
