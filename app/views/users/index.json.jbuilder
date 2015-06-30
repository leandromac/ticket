json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :phone, :departament, :access
  json.url user_url(user, format: :json)
end
