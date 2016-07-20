json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :dob
  json.url user_url(user, format: :json)
end
