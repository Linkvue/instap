json.extract! comment, :id, :id, :title, :content, :author_id, :post_id, :referer_id, :published_at, :modified_at, :blocked_at, :blocker_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
