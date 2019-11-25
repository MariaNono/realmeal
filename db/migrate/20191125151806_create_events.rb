class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.datetime :date
      t.string :cuisine
      t.integer :max_guests
      t.integer :booked_guests
      t.float :price_per_guest
      t.string :status
      t.string :address
      t.string :latitude
      t.string :longitude
      t.text :description

      t.timestamps
    end
  end
end
