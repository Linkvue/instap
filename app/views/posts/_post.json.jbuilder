json.extract! post, :id, :id, :category_id, :author_id, :title, :content, :published_at, :modified_at, :blocked_at, :blocker_id, :tags, :created_at, :updated_at
json.url post_url(post, format: :json)
