json.extract! entry, :id, :title, :description, :picture, :created_at, :updated_at
json.url entry_url(entry, format: :json)