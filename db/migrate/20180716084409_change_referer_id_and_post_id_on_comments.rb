class ChangeRefererIdAndPostIdOnComments < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE comments ALTER COLUMN referer_id SET DATA TYPE UUID USING (uuid_generate_v4());
      ALTER TABLE comments ALTER COLUMN post_id SET DATA TYPE UUID USING (uuid_generate_v4());
    SQL
  end
end
