require('rspec')
require('artist')
require('cd')

describe(Artist) do
  describe('#name') do
    it('returns the name of the artist') do
      new_artist = Artist.new('Tame Impala')
      expect(new_artist.name()).to(eq('Tame Impala'))
    end
  end

  describe('#id') do
    it('returns the id of the artist') do
      test_artist = Artist.new('Tame Impala')
      expect(test_artist.id()).to(eq(1))
    end
  end

  describe('#cds') do
    it('initially returns an empty array of cds for the artist') do
      test_artist = Artist.new('Tame Impala')
      expect(test_artist.cds()).to(eq([]))
    end
  end

  describe('.all') do
    it('returns an empty array') do
     expect(Artist.all()).to(eq([]))
   end
 end

 describe('#save') do
   it('adds an artist to the array of artists') do
     test_artist = Artist.new('The Beatles')
     test_artist.save()
     expect(Artist.all()).to(eq([test_artist]))
   end
 end

 describe('#clear') do
   it('adds a clear function to clear it') do
     test_artist = Artist.new('Rihanna')
     test_artist.save()
     expect(Artist.clear()).to(eq([]))
   end
 end

 describe('.find') do
   it('returns a dealership by its ID number') do
     test_artist = Artist.new('The Beatles')
     test_artist.save()
     test_artist2 = Artist.new('Tame Impala')
     test_artist2.save()
   end
 end

 describe('#add_cd') do
   it('adds a new cd to a artist') do
     test_artist = Artist.new('Tame Impala')
     test_cd = CD.new('Currents', 2015)
     test_artist.add_cd(test_cd)
     expect((test_artist.cds())).to(eq([test_cd]))
   end
 end

end
