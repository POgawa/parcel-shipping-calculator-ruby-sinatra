require "sinatra"
require "./lib/parcels.rb"
require "rerun"


get('/') do
   erb(:index)
end

get('/results') do

  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @weight = params.fetch('weight').to_i
  @test_parcel = Parcels.new(@length, @width, @height, @weight)
  @test_parcel = @test_parcel.cost_to_ship()

  erb(:results)

end
