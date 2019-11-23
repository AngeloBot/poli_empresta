json.extract! user, :id, :admin, :name, :email, :password, :photo, :created_at, :updated_at
json.url user_url(user, format: :json)
