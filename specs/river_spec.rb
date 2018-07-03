require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Thames")
  end

  def test_get_name
    actual = @river.name
    assert_equal("Thames", @river.name)
  end

  def test_fish_count__beginning
    actual = @river.fish.length
    assert_equal(3, actual)
  end

  def test_fish_count__take_fish
    @river.take_fish()
    actual = @river.fish.length
    assert_equal(2, actual)
  end



end
