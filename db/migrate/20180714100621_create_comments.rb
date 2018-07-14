class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.uuid :id
      t.string :title
      t.string :content_id
      t.string :author_id
      t.string :post_id
      t.string :referer_id
      t.datetime :published_at
      t.datetime :modified_at
      t.datetime :blocked_at
      t.text :blocker_id

      t.timestamps
    end
  end
end
