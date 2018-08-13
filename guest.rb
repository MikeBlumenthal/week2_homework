class Guest

  attr_reader :name, :favourite_song
  attr_accessor :wallet

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def pay_entry_fee(room)
    fee = room.entry_fee
    self.wallet -= fee
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
