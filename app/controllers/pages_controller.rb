class PagesController < ApplicationController
  def index
    weather = Weather.new
    @cities = weather.canadian_cities_weather.sort_by {|city| city[:celcius]}

    # tag lowest and highest cities
    @cities[0][:lowest] = true
    @cities[-1][:highest] = true;

    temperatures = @cities.map {|city| city[:celcius]}
    @savard_degrees = CelciusMetricsHelper.savard_degrees temperatures
    @weighted_degrees_indicator = CelciusMetricsHelper.weighted_degrees_indicator temperatures
  end
end
