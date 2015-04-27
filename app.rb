require "sinatra"
require "./lib/parcels.rb"
require "rerun"


get('/') do
   erb(:index)
end
