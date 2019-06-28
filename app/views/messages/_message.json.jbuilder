json.extract! message, :id, :body, :enrollment_id, :resource_id, :created_at, :updated_at
json.url message_url(message, format: :json)
