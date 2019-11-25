class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.datetime :event_date
      t.string :cuisine
      t.integer :max_guests
      t.integer :booked_guests, default: 0
      t.float :price_per_guest
      t.string :status, default: 'open'
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description

      t.timestamps
    end
  end
end
