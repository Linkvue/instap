class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'uuid-ossp'
    enable_extension 'pgcrypto'

    create_table :users, id: :uuid do |t|
      t.string :name, index: true
      t.string :avatar_path
      t.string :alipay_id
      t.string :tencent_id
      t.datetime :blocked_at
      t.references :blocker, references: :users, index: true
      t.string :roles, array: true

      t.timestamps
    end
  end
end
