class Room
  attr_reader(:id, :songs, :guests, :room_size)

  def initialize(id, songs, guests, room_size)
    @id = id
    @songs = songs
    @guests = guests
    @room_size = room_size
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)
    @guests << guest
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def is_full?
    return true if @guests.count >= @room_size
    false
  end




end
