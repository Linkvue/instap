SEED_POST_IDS.each do |id|
  Post.seed(:id) do |s|
    s.id = id
    s.category_id = Category.first(3).sample.id
    s.author_id = User.first(4).sample.id
    s.title = Faker::Lorem.sentences
    s.content = Faker::Markdown.sandwich(6, 3)
    s.published_at = DateTime.now
  end
end
