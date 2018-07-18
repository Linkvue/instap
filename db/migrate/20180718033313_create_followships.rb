class CreateFollowships < ActiveRecord::Migration[5.1]
  def change
    create_table :followships, id: :uuid do |t|
      t.references :user, foreign_key: true, type: :uuid, index: true
      t.references :follower, references: :users, type: :uuid, index: true

      t.datetime :started_at

      t.timestamps
    end

    add_index :followships, [ :user_id, :follower_id ], :unique => true
  end
end
