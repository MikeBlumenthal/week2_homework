class Room

  attr_reader :capacity
  attr_accessor :songs, :guests

  def initialize(capacity)
    @capacity = capacity
    @songs = []
    @guests = []
  end

end
