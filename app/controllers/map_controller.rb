class MapController < ApplicationController
  def index
    @stations = Station.all
    @hash = Gmaps4rails.build_markers(@stations) do |station, marker|
      marker.lat station.latitude
      marker.lng station.longtitude
      marker.infowindow station.route
      marker.json({title: station.name})
    end
  end
end
