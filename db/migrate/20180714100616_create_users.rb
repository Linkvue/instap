class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.uuid :id
      t.string :name
      t.string :email
      t.string :avatar_path
      t.string :alipay_id
      t.string :tencent_id
      t.datetime :blocked_at
      t.text :blocker_id
      t.text :roles

      t.timestamps
    end
  end
end
