module CelciusMetricsHelper
  def self.savard_degrees(temperatures)
    temperatures.sum.to_f / temperatures.size
  end

  def self.weighted_degrees_indicator(temperatures)
    temperatures.sort[1..-2].sum
  end
end
