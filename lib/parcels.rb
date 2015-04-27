class Parcels
  define_method(:initialize) do |length, width, heighth, weight|
    @length = length
    @width = width
    @heighth = heighth
    @weight = weight
  end
  define_method(:volume) do
    volume = @length * @width *  @heighth
    volume

  end
end
