require("minitest/autorun")
require("minitest/rg")
require_relative("../bus_stop")
require_relative("../bus")
require_relative("../person")

class TestBusStop < MiniTest::Test

  def setup
    @person1 = Person.new("Sarah", 20)
    @person2 = Person.new("Tom", 50)
    @bus_stop = BusStop.new("Usher Hall")
  end

  def test_add_person_to_queue
    
  end


end
