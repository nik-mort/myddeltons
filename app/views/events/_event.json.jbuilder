json.extract! event, :id, :name, :location, :start_date, :end_date, :tier, :created_at, :updated_at
json.url event_url(event, format: :json)
