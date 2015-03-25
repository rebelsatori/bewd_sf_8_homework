# song.rb

# ack can't do this due to needing a token

class Song
  attr_accessor :name, :album, :popularity

  def initialize(name, album, popularity)
    @name = name
    @album = album
    @popularity = popularity
  end

  def to_s
    "Song name: '#{@name}' from the album '#{@album}' | popularity = #{@popularity}"
  end
end
