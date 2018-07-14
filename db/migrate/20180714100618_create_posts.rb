class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.uuid :id
      t.string :category_id
      t.string :author_id
      t.string :title
      t.text :content
      t.datetime :published_at
      t.datetime :modified_at
      t.datetime :blocked_at
      t.string :blocker_id
      t.text :tags

      t.timestamps
    end
  end
end
