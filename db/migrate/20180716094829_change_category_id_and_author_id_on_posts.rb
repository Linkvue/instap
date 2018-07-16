class ChangeCategoryIdAndAuthorIdOnPosts < ActiveRecord::Migration[5.1]
  def change
    execute <<-SQL
      ALTER TABLE posts ALTER COLUMN category_id SET DATA TYPE UUID USING (uuid_generate_v4());
      ALTER TABLE posts ALTER COLUMN author_id SET DATA TYPE UUID USING (uuid_generate_v4());
    SQL
  end
end
