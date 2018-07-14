class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :title
      t.string :content
      t.references :author, references: :users, index: true
      t.references :post, index: true
      t.references :referer, polymorphic: true, index: true

      t.datetime :published_at
      t.datetime :modified_at
      t.datetime :blocked_at
      t.datetime :modified_at
      t.references :blocker, references: :users, index: true

      t.timestamps
    end
  end
end
