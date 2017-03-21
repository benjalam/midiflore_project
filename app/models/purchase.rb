class Purchase < ApplicationRecord
  belongs_to :supplier
  belongs_to :product
  has_many :purchase_details
end
