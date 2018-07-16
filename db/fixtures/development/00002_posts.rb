Post.first(5).map(&:destroy)
Post.seed do |s|
  s.category_id = Category.first.id
  s.author_id = User.first.id
  s.title = "Explaining Konigsberg seven-bridge problem"
  s.content = Ipsum::LONG_IPSUM
  s.published_at = DateTime.now
end

Post.seed do |s|
  s.category_id = Category.first.id
  s.author_id = User.first.id
  s.title = "Combinatorial mathematics"
  s.content = Ipsum::LONG_IPSUM
  s.published_at = DateTime.now
end

Post.seed do |s|
  s.category_id = Category.first.id
  s.author_id = User.first.id
  s.title = "Discrete mathematics"
  s.content = Ipsum::LONG_IPSUM
  s.published_at = DateTime.now
end

Post.seed do |s|
  s.category_id = Category.second.id
  s.author_id = User.second.id
  s.title = "Compare Ruby to Python"
  s.content = Ipsum::LONG_IPSUM
  s.published_at = DateTime.now
end

Post.seed do |s|
  s.category_id = Category.second.id
  s.author_id = User.second.id
  s.title = "How develop an APP like 'What is a hotdog'"
  s.content = Ipsum::LONG_IPSUM
  s.published_at = DateTime.now
end
