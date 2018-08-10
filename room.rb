class Room

  attr_reader :capacity
  attr_accessor :songs, :guests

  def initialize(capacity)
    @capacity = capacity
    @songs = []
    @guests = []
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)
    @guests.push(guest)
  end
  
end
