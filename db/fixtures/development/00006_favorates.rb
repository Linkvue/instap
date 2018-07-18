(1..4).each do |i|
  Favorate.seed(:id) do |s|
    s.id = i
    s.user_id = User.find_by_email(SEED_USER_EMAILS[i%4]).id
    s.likable_id = SEED_COMMENT_IDS[i%4]
    s.likable_type = 'Comment'
    s.likes = rand(50)
  end
end


(5..8).each do |i|
  Favorate.seed(:id) do |s|
    s.id = i
    s.user_id = User.find_by_email(SEED_USER_EMAILS[i%4]).id
    s.likable_id = SEED_POST_IDS[i%4]
    s.likable_type = 'Post'
    s.likes = rand(50)
  end
end
