require "rspec"
require "pry"
require "parcels"
require "rerun"


describe(Parcels) do
  describe('Parcels')do
    it('returns the volume of a parcel') do
      test_parcel = Parcels.new(10,15,20,25)
      expect(test_parcel.volume()).to(eq(3000))
    end
  end


end
