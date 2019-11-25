class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :user, foreign_key: true
      t.references :booking, foreign_key: true
      t.boolean :read
      t.string :message
      t.timestamps
    end
  end
end
