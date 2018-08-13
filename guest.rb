class Guest

  attr_reader :name, :favourite_song
  attr_accessor :wallet, :stamped

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
    @stamped = false
  end

  def pay_entry_fee(room)
    fee = room.entry_fee
    if self.wallet >= fee
      self.wallet -= fee
      self.stamped = true
    end
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
