require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')
require_relative('../guest')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("Mr Roboto")
    @song2 = Song.new("Smooth Operator")

    @guest1 = Guest.new("Wayne", 40, "Yoshimi...")
    @guest2 = Guest.new("Matt", 20, "The Impossible Dream")

    @room1 = Room.new(20)
    @room2 = Room.new(10, [@song1, @song2], [@guest1, @guest2])
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

  def test_room_can_add_song
    @room1.add_song(@song1)
    actual = @room1.songs.length
    assert_equal(1, actual)
  end

  def test_room_adds_correct_song
    @room1.add_song(@song2)
    expected = "Smooth Operator"
    song_array = @room1.songs
    song = song_array.first
    actual = song.name
    assert_equal(expected, actual)
  end

  def test_can_check_in_guests
    @room1.check_in(@guest1)
    guest_array = @room1.guests
    actual = guest_array.length
    assert_equal(1, actual)
  end

  def test_can_add_guests__multiple
    @room1.check_in(@guest1)
    @room1.check_in(@guest2)
    guest_array = @room1.guests
    actual = guest_array.length
    assert_equal(2, actual)
  end

  def test_can_check_out_guest_by_name
    @room2.check_out("Matt")
    guest_array = @room2.guests
    actual = guest_array.length
    assert_equal(1, actual)
  end

end
