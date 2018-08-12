class Karaoke
  attr_reader(:name, :rooms, :bar )

  def initialize(name, rooms, bar)
    @name = name
    @rooms = rooms
    @bar = bar
  end

  def count_total_money
    room_revenue = @rooms.reduce(0) { |total, room| total + room.revenue }
    room_revenue + bar.till
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
