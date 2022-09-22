json.extract! custom_travel, :id, :departure, :destination, :date, :price, :rating, :comments, :physical, :characteristics, :event_bool, :event, :created_at, :updated_at
json.url custom_travel_url(custom_travel, format: :json)
