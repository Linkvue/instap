class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts, id: :uuid do |t|
      t.references :category
      t.references :author, references: :users, index: true
      t.string :title
      t.text :content
      t.datetime :published_at
      t.datetime :modified_at
      t.datetime :blocked_at
      t.references :blocker, references: :users, index: true
      t.string :tags, array: true

      t.timestamps
    end
  end
end
