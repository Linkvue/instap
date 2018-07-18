class AddUserLikableIndexToFavorate < ActiveRecord::Migration[5.1]
  def change
    add_index :favorates, [ :user_id, :likable_id, :likable_type ], :unique => true
  end
end
