a=User.find_by_email('user_a@gmail.com')
b=User.find_by_email('user_b@gmail.com')
c=User.find_by_email('user_c@gmail.com')
d=User.find_by_email('user_d@gmail.com')

begin
  Followship.seed do |s|
    s.user_id = a.id
    s.follower_id = b.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = a.id
    s.follower_id = c.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = a.id
    s.follower_id = d.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = b.id
    s.follower_id = d.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = c.id
    s.follower_id = d.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = d.id
    s.follower_id = a.id
    s.started_at = DateTime.now
  end

  Followship.seed do |s|
    s.user_id = d.id
    s.follower_id = b.id
    s.started_at = DateTime.now
  end
rescue ActiveRecord::RecordNotUnique
  p "Followships already seeded, skip."
end
