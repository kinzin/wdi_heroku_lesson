module UrlFinder
  def self.create_artist_url(input)
    "http://musicbrainz.org/ws/2/cdstub/?query=artist:#{input.downcase.gsub(" ", "+")}&fmt=json"
  end
end