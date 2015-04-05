# Artist
class Artist
  attr_accessor :name, :popularity, :genres, :id, :top_songs, :follower_count
  def initialize(name, popularity, genres, id, follower_count)
    @name = name
    @popularity = popularity
    @genres = genres || []
    @top_songs = []
    @follower_count = follower_count || 0
  end

  def to_s
    genres_string = ''
    @genres.each { |genre| genres_string += genre + ', ' }
    artist_string = "Artist: #{@name}\n\tPopularity: #{popularity}\n"
    artist_string += "Genres: #{genres_string}\n" if genres.length > 0
    if @top_songs.length > 0
      artist_string += "\tTop Songs\n"
      @top_songs.each { |song| artist_string += "\t#{song}\n" }
    end
    artist_string
  end
end
