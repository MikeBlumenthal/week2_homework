require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Thom", 50, "Paranoid Android")
  end

  def test_guest_has_name
    actual = @guest1.name
    assert_equal("Thom", actual)
  end

  def test_guest_has_money
    actual = @guest1.wallet
    assert_equal(50, actual)
  end

  def test_guest_has_favourite_song
    actual = @guest1.favourite_song
    assert_equal("Paranoid Android", actual)
  end
end
