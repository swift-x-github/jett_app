json.extract! blog, :id, :name, :description, :account_id, :created_at, :updated_at
json.url blog_url(blog, format: :json)
