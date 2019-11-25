class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :status, default: 'pending'
      t.integer :number_of_guests

      t.timestamps
    end
  end
end
