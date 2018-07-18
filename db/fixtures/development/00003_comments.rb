prev_id = nil

SEED_COMMENT_IDS.map do |id|
  Comment.seed(:id) do |s|
    s.id = id
    s.referer_id = prev_id if prev_id
    s.referer_type = 'Comment' if prev_id
    s.content = Faker::Lorem.sentences
    s.post_id = Post.first.id
    s.author_id = User.first.id
  end
  prev_id = id
end
