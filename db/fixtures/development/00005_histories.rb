begin
  History.seed(:id) do |s|
    s.id = 1
    s.post_id = Post.first(2).sample.id
    s.reader_id = User.first(3).sample.id
    s.lineno = 1
  end
  History.seed(:id) do |s|
    s.id = 2
    s.post_id = Post.first(2).sample.id
    s.reader_id = User.first(3).sample.id
    s.lineno = 2
  end
rescue ActiveRecord::RecordNotUnique
  p "Histories already seeded, skip."
end

