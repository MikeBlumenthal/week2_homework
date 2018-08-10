require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("Mr Roboto")
    @song2 = Song.new("Smooth Operator")
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

end
