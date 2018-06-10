require('sinatra')
require('sinatra/contrib/all')
require_relative('..models/artwork')
also_reload('../models/*')

get '/artworks' do
  @artworks = Artwork.all
  erb (:"artworks/index")
end

get '/artworks/:id' do
  @artwork = Artwork.find(params['id'].to_i)
  erb (:"artworks/show")
end
