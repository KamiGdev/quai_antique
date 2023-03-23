json.extract! reservation, :id, :user_id, :phone_number, :date, :time, :people_number, :allergy, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
