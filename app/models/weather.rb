class Weather
  def canadian_cities_weather
    (1..24).map do |i|
      {
        name: 'Lorem ' + i.to_s,
        celcius: -10 + Random.rand(20),
      }
    end
  end
end
