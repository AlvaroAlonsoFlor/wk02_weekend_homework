class Karaoke
  attr_reader(:name, :rooms, :fee)

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
  end

  # def check_in(guest, room)
  #   wanted_room = @rooms.find { |item| item == room }
  #   wanted_room.add_guest(guest)
  #
  # end
  #
  # def check_out(guest, room)
  #   wanted_room = @rooms.find { |item| item == room }
  #   wanted_room.remove_guest(guest)
  # end

  # I am already doing this on the rooms
  # def add_song_to_room(song, room)
  #   wanted_room = @rooms.find { |item| item == room }
  #   wanted_room.add_song(song)
  #
  # end
end
