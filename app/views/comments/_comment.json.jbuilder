json.extract! comment, :id, :name, :lastname, :email, :phone, :message, :created_at, :updated_at
json.url comment_url(comment, format: :json)
