class CreateFavorates < ActiveRecord::Migration[5.1]
  def change
    create_table :favorates do |t|
      t.references :user, foreign_key: true, type: :uuid
      t.references :likable, polymorphic: true, type: :uuid
      t.integer :likes

      t.timestamps
    end
  end
end
