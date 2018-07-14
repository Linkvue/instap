class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.references :reader, foreign_key: true
      t.references :post, foreign_key: true
      t.integer :lineno

      t.timestamps
    end
  end
end
