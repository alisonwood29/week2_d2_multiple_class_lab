require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test

  def setup
    @passengers = ["Sarah", "Tom"]
    @bus = Bus.new(22, "Ocean Terminal", @passengers)
  end

  def test_engine_noise
    assert_equal("Brum Brum", @bus.engine)
  end

  def test_number_of_passengers
    total_passengers = @bus.passenger_number()
    assert_equal(2, total_passengers)
  end

  def test_pick_up_passenger
    new_passenger = "Felicity"
    @bus.pick_up(new_passenger)
    assert_equal(3, @bus.passengers().count())
  end

  def test_drop_off_passenger
    @bus.drop_off("Sarah")
    assert_equal(1, @bus.passengers().count())
  end

  def test_empty_bus
    @bus.empty
    assert_equal(0, @bus.passengers().count())
  end

end
