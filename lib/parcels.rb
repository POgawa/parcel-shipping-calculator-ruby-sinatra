class Parcels
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    volume = @length * @width *  @height
    volume
  end


  def oversize

    @length + @width*2 + @height*2 > 120


  end


  def cost_to_ship

      shipping_cost = 0

      if @weight == 0
        "Please enter valid weight"
      elsif @weight >= 70
        shipping_cost = "The package is to heavy to ship USPS, please use a frieght service"
      elsif @weight < 2
        shipping_cost = shipping_cost + 1
      else @weight < 10
        shipping_cost = shipping_cost + 2
      end
      if oversize
        shipping_cost = shipping_cost * 2
      end
      shipping_cost
  end
end
