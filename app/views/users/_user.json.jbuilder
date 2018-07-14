json.extract! user, :id, :id, :name, :email, :avatar_path, :alipay_id, :tencent_id, :blocked_at, :blocker_id, :roles, :created_at, :updated_at
json.url user_url(user, format: :json)
