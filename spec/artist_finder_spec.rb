require_relative '../modules'

describe UrlFinder do
  it "returns good artist URLS" do
    UrlFinder.create_artist_url("Cher").
      should == "http://musicbrainz.org/ws/2/cdstub/?query=artist:cher&fmt=json"
  end
  it "handles spaces" do
    UrlFinder.create_artist_url("Florence and the Machine").
      should == "http://musicbrainz.org/ws/2/cdstub/?query=artist:florence+and+the+machine&fmt=json"
  end
end