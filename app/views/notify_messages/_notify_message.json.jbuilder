json.extract! notify_message, :id, :title, :contents, :created_at, :updated_at
json.url notify_message_url(notify_message, format: :json)
