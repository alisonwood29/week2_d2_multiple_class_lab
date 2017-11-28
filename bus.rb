class Bus

attr_reader :bus_number, :destination, :passengers

  def initialize(bus_number, destination)
    @bus_number = bus_number
    @destination = destination
    @passengers = []
  end

  def engine()
    return "Brum Brum"
  end

  def number_of_passengers()
    return @passengers.count()
  end

  def pick_up(new_passenger)
    @passengers << new_passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty()
    @passengers.clear
  end

end
