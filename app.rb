require('sinatra')
require('sinatra-contrib')
also_reload('lib/**/*.rb')
require('./lib/cd')

get('/') do
  @cd = CD.all()
  erb(:cds)
end

get('/cds/new') do
  erb(:cd_form)
end

post('/cds') do
  title = params.fetch("title")
  year = params.fetch("year")
  cd = CD.new(title, year)
  cd.save()
  erb(:success)
end
