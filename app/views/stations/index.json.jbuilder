json.array!(@stations) do |station|
  json.extract! station, :id, :name, :route, :address, :latitude, :longtitude
  json.url station_url(station, format: :json)
end
