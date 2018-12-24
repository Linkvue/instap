module Resources
  class Post < Grape::API
    resource :posts do

      desc 'Get posts'

      desc 'Return a post'
      #params do
      #  requires :id, type: String, desc: 'Post id.'
      #end
      route_param :id do
        before do
          @post = ::Post.find(params[:id])
        end
        after do
          present :post, @post, with: Entities::Post
        end
        get do
        end
        desc 'Update a post'
        params do
          optional :title, type: String, desc: 'Post title.'
          optional :content, type: String, desc: 'Post content'
          optional :tags, type: Array, desc: 'Post tags'
        end
        patch do
          @post.update(params)
        end

        desc 'Delete a post'
        delete do
          @post.destroy!
        end
      end

      desc 'Create a post'
      params do
        requires :title, type: String, desc: 'Post title.'
        requires :content, type: String, desc: 'Post content'
        requires :tags, type: Array[String], desc: 'Post tags'
        requires :category_id, type: String, desc: 'The category that the post belongs to.'
        requires :author_id, type: String, desc: 'TODO when finishing auth system.'
      end
      post do
        @post = ::Post.create(params)
        present :post, @post, with: Entities::Post
      end

    end
  end
end
