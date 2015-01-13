require('rspec')
require('places_been')

describe(Place) do

  describe('#description') do
    it('returns an instance when entered initially') do
      test_place = Place.new("Orvieto")
      expect(test_place.description()).to(eq("Orvieto"))
    end
  end

  describe('.all') do
    # it('returns all the instances') do
    #   test_place = Place.new("Orvieto")
    #   test_place2 = Place.new("Slovenia")
    #   expect(Place.all()).to(eq([test_place, test_place2]))
    # end

    it('starts out empty') do
      expect(Place.all()).to(eq([]))
    end

    it('becomes not empty when something has been saved') do
      test_place1 = Place.new("orvieto").save()
      test_place2 = Place.new("slovenia").save()
      expect(Place.all()).to(eq([test_place1, test_place2]))
    end

  end

  describe('#save') do
    it('adds a place to the array of saved Places') do
      test_place1 = Place.new("Orvieto").save()
      test_place2 = Place.new("Slovenia").save()
      expect(Place.all()).to(eq([test_place1, test_place2]))
    end

  end

  describe('.clear') do
    it('wipes out everything in the array of saved Places') do
      test_place1 = Place.new("Orvieto").save()
      test_place2 = Place.new("Slovenia").save()
      expect(Place.clear()).to(eq([]))
    end
  end


  before() do
    Place.clear()
  end
end
