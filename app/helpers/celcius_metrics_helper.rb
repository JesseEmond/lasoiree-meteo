module CelciusMetricsHelper
  def self.savard_degrees(temperatures)
    temperatures.sum.to_f / temperatures.size
  end
end
