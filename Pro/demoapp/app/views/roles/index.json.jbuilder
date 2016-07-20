json.array!(@roles) do |role|
  json.extract! role, :id, :name, :email, :User_id
  json.url role_url(role, format: :json)
end
