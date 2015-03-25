require_relative 'lib/artist'
require_relative 'lib/spotify'

spotify_connection = Spotify.new


puts "Enter a music artist's name"
artist = gets.chomp
result = spotify_connection.search_for_artist artist
if result != nil
  artist = Artist.new(result[:name], result[:popularity], result[:genres], result[:id], result[:count])
  puts "\nArtist info:"
  puts artist.to_s
else
  puts "No artist found."
end
