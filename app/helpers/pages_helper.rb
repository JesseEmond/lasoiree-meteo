module PagesHelper
  def format_celcius(celcius)
    number_with_precision(celcius, precision: 2)
  end
end
