require 'open_weather'

class Weather
  def canadian_cities_weather
    options = { units: 'metric' }
    options = options.merge({ APPID: ENV['APPID'] }) unless ENV['APPID'].nil?

    weather = OpenWeather::Current.cities(CANADIAN_CITY_IDS, options)

    puts weather
    
    weather['list'].map do |city_weather|
      {
        name: city_weather['name'],
        celcius: city_weather['main']['temp']
      }
    end
  end

  private
  # major cities only, taken from http://www.meteomedia.com/, using
  # http://openweathermap.org/ to find IDs.
  CANADIAN_CITY_IDS = [5909628,5913490,5920288,5946768,5959974,
                       5983720,6050610,6059891,6076211,6077243,
                       6325494,6141256,6146143,6138517,6138501,
                       6167865,6169141,6173331,6180550,6183235]
end
