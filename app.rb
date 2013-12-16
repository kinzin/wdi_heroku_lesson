require 'bundler/setup'
Bundler.require(:default)

require_relative 'modules'

get '/' do 
	erb :index
end

get '/artist' do 
	input = params[:artist]
	url = UrlFinder.create_artist_url(input)
	response = HTTParty.get url
	details = JSON response.body
	@list_of_things = details["cdstubs"]
	erb :artist
end