require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Thom", 50, "Paranoid Android")
    @guest2 = Guest.new("Bessie", 25, "Go Now")
    @guest3 = Guest.new("Bob", 1, "Money, Money, Money")

    @room1 = Room.new(2, 5, [], [@guest1])
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

  def test_guest_is_stamped__false
    actual = @guest1.stamped
    assert_equal(false, actual)
  end

  def test_guest_can_enter_room
    @guest2.enter_room(@room1)
    actual = @room1.guests.length
    assert_equal(2, actual)
  end

  def test_guest_can_leave_room
    @guest1.leave_room(@room1)
    actual = @room1.guests.length
    assert_equal(0, actual)
  end

  def test_guest_can_pay_fee
    @guest2.pay_entry_fee(@room1)
    actual = @guest2.wallet
    actual2 = @guest2.stamped
    assert_equal(20, actual)
    assert_equal(true, actual2)
  end

  def test_guest_can_pay_fee__not_enough_money
    @guest3.pay_entry_fee(@room1)
    actual = @guest3.wallet
    assert_equal(1, actual)
  end

end
