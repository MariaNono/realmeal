class RemovePriceFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :price_per_guest
  end
end
