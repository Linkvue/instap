class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories, id: :uuid do |t|
      t.string :title
      t.text :details
      t.datetime :blocked_at
      t.references :blocker, references: :users, index: true

      t.timestamps
    end
  end
end
