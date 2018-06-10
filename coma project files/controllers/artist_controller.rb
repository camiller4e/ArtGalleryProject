require('sinatra')
require('sinatra/contrib/all')
require_relative('..models/artist')
also_reload('../models/*')

get '/artists' do
  @artists = Artist.all
end
