class Room
  attr_reader(:id, :songs, :guests, :room_size)

  def initialize(id, songs, guests, room_size)
    @id = id
    @songs = songs
    @guests = guests
    @room_size = room_size
  end

  
end
