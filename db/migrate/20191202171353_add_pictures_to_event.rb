class AddPicturesToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :pictures, foreign_key: true
  end
end
