class CreateExcerpts < ActiveRecord::Migration[5.1]
  def change
    create_table :excerpts do |t|
      t.references :reader, foreign_key: {to_table: :users}, type: :uuid
      t.references :post, foreign_key: true, type: :uuid

      t.text :content

      t.timestamps
    end
  end
end
