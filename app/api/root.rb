require 'grape-swagger'

module API
  class Root < Grape::API
    format :json

    get :hello do
      {hello: 'It works!'}
    end

    mount ::Resources::Post

    add_swagger_documentation \
      info: {
        title: 'Instap API',
        author_name: 'Daniel Zhang',
        author_email: 'thecndra@gmail.com',
      }
  end
end
