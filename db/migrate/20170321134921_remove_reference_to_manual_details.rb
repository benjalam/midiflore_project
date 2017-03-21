class RemoveReferenceToManualDetails < ActiveRecord::Migration[5.0]
  def change
    remove_reference :manual_details, :manuals
    remove_reference :manual_details, :products
  end
end
