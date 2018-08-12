require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Thom", 50, "Paranoid Android")
    @guest2 = Guest.new("Bessie", 25, "Go Now")

    @room1 = Room.new(2, [], [@guest1])
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

  def test_guest_can_enter_room
    @guest2.enter_room(@room1)
    actual = @room1.guests.length
    assert_equal(2, actual)
  end

end
