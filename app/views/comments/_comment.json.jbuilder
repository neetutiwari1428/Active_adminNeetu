json.extract! comment, :id, :author_name, :comment, :created_at, :updated_at
json.url comment_url(comment, format: :json)
