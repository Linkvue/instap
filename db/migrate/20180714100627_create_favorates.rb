class CreateFavorates < ActiveRecord::Migration[5.1]
  def change
    create_table :favorates do |t|
      t.references :user, foreign_key: true
      t.references :likable, foreign_key: true
      t.integer :likes

      t.timestamps
    end
  end
end
