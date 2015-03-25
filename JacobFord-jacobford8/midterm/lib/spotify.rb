#use this to call the spotify API 

class Spotify
  attr_accessor :tracks, :day, :track_details

  def initialize(tracks, day)
    @tracks = tracks
    @day = day
  end


  def get_tracks
      day_tracks = JSON.load(RestClient.get("http://charts.spotify.com/api/tracks/most_streamed/global/daily/#{@day}"))
      top_tracks = []
      day_tracks['tracks'].each do |track|
        output = {}
        output['artist'] = track['artist_name']
        output['track_name'] = track['track_name']
        output['total_streams'] = track['num_streams']
        top_tracks.push(output)
      end
    filtered_track = top_tracks[0]
    puts "The top song for #{@day} was #{filtered_track['track_name']} by #{filtered_track['artist']}, with #{filtered_track['total_streams']} streams."    
  end
 
end      