require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")

class TestBus < MiniTest::Test

  def setup
    @bus = Bus.new(22, "Ocean Terminal")
  end

  def test_engine_noise
    assert_equal("Brum Brum", @bus.engine)
  end


end
