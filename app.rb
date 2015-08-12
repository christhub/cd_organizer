require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/cd')

get('/') do
  erb(:index)
end

get('/cds') do
  @cds = CD.all()
  erb(:cds)
end

get ('/cds/new') do
  erb(:cd_form)
end

post ('/cds') do
  title = params.fetch("title")
  year = params.fetch("year").to_s()
  cd = CD.new(title, year)
  cd.save()
  erb(:success)
end

get('/cds/:id') do
  @cd = CD.find(params.fetch('id').to_i())
  erb(:cd)
end
