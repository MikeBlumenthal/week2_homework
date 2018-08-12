class Guest

  attr_reader :name, :wallet, :favourite_song
  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def enter_room(room)
    unless room.full?
      room.check_in(self)
    else
      return "Room is full"
    end
  end

  def leave_room(room)
    room.check_out(self)
  end
end
