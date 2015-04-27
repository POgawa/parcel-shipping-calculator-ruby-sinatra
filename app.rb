require "sinatra"
require "./lib/parcels.rb"
require "rerun"


get('/') do
   erb(:index)
end

get('/results') do

  @length = params.fetch('length')
  @width = params.fetch('width')
  @heigth = params.fetch('height')
  @weight = params.fetch('weight')
  


  erb(:results)

end
