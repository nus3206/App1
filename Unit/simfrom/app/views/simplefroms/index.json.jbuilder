json.array!(@simplefroms) do |simplefrom|
  json.extract! simplefrom, :id, :name, :email, :year
  json.url simplefrom_url(simplefrom, format: :json)
end
