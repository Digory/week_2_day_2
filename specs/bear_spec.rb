require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Grizzly")
    @river = River.new("Amazon")
  end

  def test_get_name
    actual = @bear.name()
    assert_equal("Yogi", actual)
  end

  def test_get_type
    actual = @bear.type()
    assert_equal("Grizzly", actual)
  end

  def test_take_fish
    @bear.take_fish(@river)
    actual = @bear.stomach.length()
    assert_equal(1, actual)
  end

  def test_roar
    actual = @bear.roar()
    assert_equal("ROAAAAARRRR!", actual)
  end

  def test_food_count
    @bear.take_fish(@river)
    actual = @bear.food_count()
    assert_equal(1, actual)
  end


end
