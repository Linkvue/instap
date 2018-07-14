class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.references :reader, foreign_key: {to_table: :users}, type: :uuid
      t.references :post, foreign_key: true, type: :uuid
      t.integer :lineno

      t.timestamps
    end
  end
end
