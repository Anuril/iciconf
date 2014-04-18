json.array!(@users) do |user|
  json.extract! user, :id, :prename, :surname, :email, :password, :salt, :created_at
  json.url user_url(user, format: :json)
end
