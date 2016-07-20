json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :password, :dob, :male
  json.url user_url(user, format: :json)
end
