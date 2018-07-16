Comment.delete_all
Comment.seed do |s|
  s.content = Ipsum::SHORT_IPSUM
  s.post_id = Post.first.id
  s.author_id = User.first.id
end

Comment.seed do |s|
  s.content = Ipsum::SHORT_IPSUM
  s.post_id = Post.first.id
  s.author_id = User.first.id
end
