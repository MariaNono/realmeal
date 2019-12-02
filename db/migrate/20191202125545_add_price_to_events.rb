class AddPriceToEvents < ActiveRecord::Migration[5.2]
  def change
    add_monetize :events, :price_per_guest, currency: { present: false }
  end
end
