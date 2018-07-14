class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.uuid :id
      t.string :title
      t.text :details
      t.datetime :blocked_at
      t.string :blocker_id

      t.timestamps
    end
  end
end
