require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')
require('./lib/artist')


get('/') do
  erb(:index)
end

get('/artist/new') do
  erb(:artists_form)
end

get('/artists') do
  @artists = Artist.all()
  erb(:artists)
end

post('/artists') do
  name = params.fetch('name')
  Artist.new(name).save()
  @artists = Artist.all()
  erb(:success)
end

get('/artists/:id') do
  @artist = Artist.find(params.fetch('id').to_i)
  erb(:artist)
end

get('/artists/:id/cds/new') do
  @artist = Cd.find(params.fetch('id').to_id())
  erb(:cd_artist_form)
end

post('/cds') do
  title = params.fetch("title")
  year = params.fetch("year")
  @cd = CD.new(title, year)
  @cd.save()
  @artist = Artist.find(params.fetch('cd_id').to_i)
  @artist.add_artist(@artist)
  erb(:success)
end
