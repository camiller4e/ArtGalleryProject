require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/artist_controller')
require_relative('controllers/artwork_controller')

get '/' do
  erb(:home)
end
