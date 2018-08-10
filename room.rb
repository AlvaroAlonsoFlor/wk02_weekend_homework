class Room
  attr_reader(:id, :songs, :guests, :room_size, :revenue)

  def initialize(id, songs, guests, room_size)
    @id = id
    @songs = songs
    @guests = guests
    @room_size = room_size
    @fee = room_size + 3
    @revenue = 0
  end

  def add_song(song)
    @songs.push(song)
  end

  def add_guest(guest)

    if is_full? == true
      return "Sorry, the room is full"
    end

    if guest.pay(@fee) == nil
      return "You don't have enough money to pay for this room"
    end

    guest.pay(@fee)
    @revenue += @fee
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
