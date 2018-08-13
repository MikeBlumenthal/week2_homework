class Room

  attr_reader :capacity, :entry_fee
  attr_accessor :songs, :guests

  def initialize(capacity, entry_fee, songs = [], guests = [])
    @capacity = capacity
    @entry_fee = entry_fee
    @songs = songs
    @guests = guests
  end

  def add_song(song)
    @songs.push(song)
  end

  def check_in(guest)
    @guests.push(guest)
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def check_out_by_name(name_of_guest_leaving)
    @guests.delete_if { |guest| guest.name == name_of_guest_leaving }
  end

  def full?
    if guests.length >= capacity
      return true
    else
      return false
    end
  end

end
