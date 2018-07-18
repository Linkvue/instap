Category.seed(:id) do |s|
  s.id = "bea8334b-fdb4-4a0e-9636-a3d7c2836e71"
  s.title = "Mathematics"
  s.details = Faker::Lorem.sentences
end

Category.seed do |s|
  s.id = "53fafb47-e8d9-4d53-93c6-4d07ce6db293"
  s.title = "Programming"
  s.details = Faker::Lorem.sentences
end

Category.seed do |s|
  s.id = "c25ef374-c65a-4b57-be2f-5c6a5a002377"
  s.title = "Chemistry"
  s.details = Faker::Lorem.sentences
end
