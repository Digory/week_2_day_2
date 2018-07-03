require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup
    @fish = Fish.new("Cod")
  end

  def test_get_name
    actual = @fish.name
    assert_equal("Cod", actual)
  end


end
