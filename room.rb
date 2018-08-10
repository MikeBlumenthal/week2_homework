class Room

  attr_reader :capacity
  attr_accessor :songs, :guests

  def initialize(capacity, songs = [], guests = [])
    @capacity = capacity
    @songs = songs
    @guests = guests
  end

  def add_song(song)
    @songs.push(song)
  end

  def check_in(guest)
    @guests.push(guest)
  end

  def check_out(name_of_guest_leaving)
    @guests.delete_if { |guest| guest.name == guest_leaving }

  end

end
