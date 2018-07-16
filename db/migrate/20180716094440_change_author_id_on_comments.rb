class ChangeAuthorIdOnComments < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE comments ALTER COLUMN author_id SET DATA TYPE UUID using (uuid_generate_v4());
    SQL
  end
end
