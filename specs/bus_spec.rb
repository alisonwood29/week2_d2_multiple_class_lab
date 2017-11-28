require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative("../person")


class TestBus < MiniTest::Test

  def setup
    @passenger1 = Person.new("Sarah", 20)
    @passenger2 = Person.new("Tom", 50)
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_engine_noise
    assert_equal("Brum Brum", @bus.engine)
  end

  def test_number_of_passengers
    total_passengers = @bus.number_of_passengers()
    assert_equal(0, total_passengers)
  end

  def test_pick_up_passenger
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_drop_off_passenger
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger1)
    assert_equal(1, @bus.number_of_passengers())
  end

  def test_empty_bus
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty()
    assert_equal(0, @bus.number_of_passengers())
  end

end
