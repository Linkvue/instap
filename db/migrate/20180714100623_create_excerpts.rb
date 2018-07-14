class CreateExcerpts < ActiveRecord::Migration[5.1]
  def change
    create_table :excerpts do |t|
      t.references :reader, foreign_key: true
      t.references :post, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
