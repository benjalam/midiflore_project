class HarvestDetail < ApplicationRecord
  belongs_to :products
  belongs_to :harvests
end
