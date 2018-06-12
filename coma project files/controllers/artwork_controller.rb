require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/artwork.rb')
require_relative('../models/artist.rb')
also_reload('../models/*')

get '/artworks' do
  @artworks = Artwork.all
  erb (:"artworks/index")
end

get '/artworks/new' do
  @artists = Artist.all
  erb(:"artworks/new")
end

get '/artworks/:id' do
  @artwork = Artwork.find(params['id'].to_i)
  erb (:"artworks/show")
end

get '/artworks/:id/edit' do
  @artists = Artist.all
  @artwork = Artwork.find(params['id'])
  erb(:"artworks/edit")
end



post '/artworks' do
  artwork = Artwork.new(params)
  artwork.save
  redirect to("/artworks")
end

post '/artworks/:id' do
  artwork = Artwork.new(params)
  artwork.update
  redirect to "/artworks/#{params['id']}"
end

post '/artworks/:id/delete' do
  Artwork.delete(params[:id])
  redirect to("/artworks")
end
