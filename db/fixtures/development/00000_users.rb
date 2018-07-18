DEFAULT_TIME = DateTime.now
User.seed(:email) do |s|
  s.name = "UserA"
  s.avatar_path = "https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=901ab36d4d90f60310bd9415587bd87e/10dfa9ec8a1363277848fd6f968fa0ec09fac7c0.jpg"
  s.alipay_id = "alipay"
  s.email = "user_a@gmail.com"
  s.tencent_id = "tencent"
end

User.seed(:email) do |s|
  s.name = "UserB"
  s.avatar_path = "https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=901ab36d4d90f60310bd9415587bd87e/10dfa9ec8a1363277848fd6f968fa0ec09fac7c0.jpg"
  s.alipay_id = "UserB"
  s.email = "user_b@gmail.com"
  s.tencent_id = "tencent"
end

User.seed(:email) do |s|
  s.name = "UserC"
  s.avatar_path = "https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=901ab36d4d90f60310bd9415587bd87e/10dfa9ec8a1363277848fd6f968fa0ec09fac7c0.jpg"
  s.alipay_id = "UserC"
  s.email = "user_c@gmail.com"
  s.tencent_id = "tencent"
end

User.seed(:email) do |s|
  s.name = "UserD"
  s.avatar_path = "https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=901ab36d4d90f60310bd9415587bd87e/10dfa9ec8a1363277848fd6f968fa0ec09fac7c0.jpg"
  s.alipay_id = "UserD"
  s.email = "user_d@gmail.com"
  s.tencent_id = "tencent"
end
