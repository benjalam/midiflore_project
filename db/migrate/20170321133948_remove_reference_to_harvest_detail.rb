class RemoveReferenceToHarvestDetail < ActiveRecord::Migration[5.0]
  def change
    remove_reference :harvest_details, :harvests
    remove_reference :harvest_details, :products
  end
end
