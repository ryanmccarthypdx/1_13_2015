require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places_been.rb')

get('/input_form') do
  @places = Place.all()
  erb(:form)
end


post('/success') do
  place_example = params.fetch("place_example")
  place = Place.new(place_example)
  place.save()
  erb(:result)
end
