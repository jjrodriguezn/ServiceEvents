json.extract! event, :id, :name, :description, :address, :phone, :start_time, :end_time, :latitude, :longitude, :owner_id, :created_at, :updated_at
json.url event_url(event, format: :json)
