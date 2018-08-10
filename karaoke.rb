class Karaoke
  attr_reader(:name, :rooms)

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
  end
end
