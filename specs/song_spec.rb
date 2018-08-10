require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup
    @song = Song.new("Voulez Vous")
  end

  def song_has_name
    assert_equal("Voulez Vous", @song.name)
  end

end
