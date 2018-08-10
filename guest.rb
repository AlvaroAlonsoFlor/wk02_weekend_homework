class Guest
  attr_reader :name, :wallet, :favourite_song

  def initialize(name, wallet, favourite_song)

    @name = name
    @wallet = wallet
    @favourite_song = favourite_song

  end

  def is_favourite_song(song)
    return "Yeah!" if song.name == @favourite_song
  end

  def pay(amount)
    return @wallet -= amount if has_money?(amount) 
  end

  def has_money?(amount)
    return @wallet >= amount
  end


end
