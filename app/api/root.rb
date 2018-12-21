module API
  class Root < Grape::API
    mount ::Resources::Post
  end
end
