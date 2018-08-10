class Room
  attr_reader(:id, :songs, :guests, :room_size)

  def initialize(id, songs = [], guests = [], room_size)
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





  # def play_song(song)
  #   wanted_song = @songs.find { |item| item == song }
  #   message = "Now playing #{wanted_song.name}"
  #
  #   return message



    # @guests.map do |guest|
    #   if guest.is_favourite_song(wanted_song) != nil
    #     return "#{message} #{is_favourite_song(wanted_song)}"
    #   else
    #     return message
    #   end
    # end




  # end




end
