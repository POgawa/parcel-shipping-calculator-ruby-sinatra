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


  def oversize

  end


  def cost_to_ship

      shipping_cost = 0

      if @weight >= 70
        "The package is to heavy to ship USPS, please use a frieght service"
      elsif @weight < 2
        shipping_cost = shipping_cost + 1
      else @weight < 10
        shipping_cost = shipping_cost + 2
      end
  end
end
