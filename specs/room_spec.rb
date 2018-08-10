require('minitest/autorun')
require('minitest/rg')
require_relative('../room')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new(20)
  end

  def test_room_has_capacity
    actual = @room1.capacity
    assert_equal(20, actual)
  end

  def room_has_songs__empty
    actual = @room1.songs
    assert_equal([], actual)
  end
  
  def test_room_has_guests__empty
    actual = @room1.guests
    assert_equal([], actual)
  end


end
