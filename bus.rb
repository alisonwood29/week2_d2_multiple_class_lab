class Bus

attr_reader :bus_number

  def initialize(bus_number, destination)
    @bus_number = bus_number
    @destination = destination
  end

  def engine
    return "Brum Brum"
  end
end
