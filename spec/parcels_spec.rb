require "rspec"
require "pry"
require "parcels"
require "rerun"


describe(Parcels) do
  describe('volume')do
    it('returns the volume of a parcel') do
      test_parcel = Parcels.new(10,15,20,25)
      expect(test_parcel.volume()).to(eq(3000))
    end
  end

  describe('cost_to_ship') do
    it('returns the cost to ship a package based off information given') do
      test_parcel = Parcels.new(10,15,20,25)
      expect(test_parcel.cost_to_ship()).to(eq(2))
    end
  end
  describe('cost_to_ship') do
    it('returns an error message if the package is over 70 lbs') do
      test_parcel = Parcels.new(10,15,20,70)
      expect(test_parcel.cost_to_ship()).to(eq("The package is to heavy to ship USPS, please use a frieght service"))
    end
  end

  describe('oversize') do
    it("tests to see if a package is oversized or not") do
      test_parcel = Parcels.new(10,15,100,70)
      expect(test_parcel.oversize()).to(eq(true))
    end
  end

  describe('oversize') do
    it("tests to see if a package is oversized or not") do
      test_parcel = Parcels.new(10,15,30,70)
      expect(test_parcel.oversize()).to(eq(false))
    end
  end
  describe('cost_to_ship') do
    it("adds additional cost if the package is oversized") do
    test_parcel = Parcels.new(10,15,100,25)
    expect(test_parcel.cost_to_ship()).to(eq(4))
    end
  end
end
