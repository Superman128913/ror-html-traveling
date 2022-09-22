json.extract! user, :id, :admin, :name, :surname, :telephon, :email, :encrypted_password, :banned, :created_at, :updated_at
json.url user_url(user, format: :json)
