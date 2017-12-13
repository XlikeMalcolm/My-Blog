json.extract! post, :id, :name, :title, :body, :image, :category_id, :created_at, :updated_at
json.url post_url(post, format: :json)
