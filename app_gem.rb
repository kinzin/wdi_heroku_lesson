require 'bundler/setup'
Bundler.require(:default)
require_relative('models/musicbrainz.rb')

get '/' do 
	erb :index
end

get '/artist' do 
	input = params[:artist].downcase.gsub(" ", "+")
	@name = MusicBrainz::Artist.find_by_name("#{input}").name
	@homepage = MusicBrainz::Artist.find_by_name("#{input}").urls[:official_homepage]
	@img_url = MusicBrainz::Artist.find_by_name("#{input}").urls[:image]
	erb :name
end