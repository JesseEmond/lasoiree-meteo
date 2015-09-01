class PagesController < ApplicationController
  def index
    weather = Weather.new
    @cities = weather.canadian_cities_weather.sort_by {|city| city[:celcius]}
  end
end
