require 'json'
require 'rest-client'

class Spotify
  SPOTIFY_BASE_URL = 'https://api.spotify.com'
  SPOTIFY_SEARCH_URL = "#{SPOTIFY_BASE_URL}/v1/search"

  def search_for_artist(artist)
    result = nil
    artist_result = nil
    param_hash = {
      'limit' => '1',
      'type' => 'artist',
      'q' => artist.gsub(/ /, '+')
    }

    begin
      artist_result = RestClient.get(SPOTIFY_SEARCH_URL, {:params => param_hash, :accept => :json})
    rescue => e
      puts e.response
    end

    if artist_result != nil
      artist_hash = JSON.parse artist_result
      if artist_hash != nil && artist_hash['artists']['items'].length > 0
        spotify_artist = artist_hash['artists']['items'].first
        result = {:name => spotify_artist['name'], :popularity => spotify_artist['popularity'], :genres => spotify_artist['genres'], :id => spotify_artist['id'], :count => spotify_artist['followers']['total']}
      end
    end
    result
  end

  # def get_top_songs(artist_id)
  #   result = nil
  #   song_results = nil
  #
  #   begin
  #     song_results = RestClient.get(SPOTIFY_BASE_URL + "/vi/artists/#{artist_id}/top-tracks?country=US", {:accept => :json})
  #   rescue => e
  #     puts e.response
  #   end
  #
  #   if song_results != nil
  #     puts song_results
  #   end
  #
  # end
end
