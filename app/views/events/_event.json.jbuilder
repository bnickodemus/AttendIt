json.extract! event, :id, :author, :title, :date, :content, :created_at, :updated_at
json.url event_url(event, format: :json)
