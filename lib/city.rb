class City
  attr_reader :country, :altitude

  def initialize(country, name, altitude)
    @country = country
    @name = name
    @altitude = altitude.to_f
  end

  def print
    "#{@altitude.round(0)}m - #{@name}, #{@country}"
  end
end