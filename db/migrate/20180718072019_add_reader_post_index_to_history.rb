class AddReaderPostIndexToHistory < ActiveRecord::Migration[5.1]
  def change
    add_index :histories, [ :reader_id, :post_id ], :unique => true
  end
end
