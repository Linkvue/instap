Category.first(3).map(&:destroy)

Category.seed do |s|
  s.title = "Mathematics"
  s.details = Ipsum::SHORT_IPSUM
end

Category.seed do |s|
  s.title = "Programming"
  s.details = Ipsum::SHORT_IPSUM
end

Category.seed do |s|
  s.title = "Chemistry"
  s.details = Ipsum::SHORT_IPSUM
end
