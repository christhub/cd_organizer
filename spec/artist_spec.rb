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

  # describe('#id') do
  #   it('returns the id of the artist') do
  #     test_artist = Artist.new('Tame Impala')
  #     expect(test_artist.id()).to(eq(1))
  #   end
  # end
  #
  # describe('#cd') do
  #   it('returns an empty array of cds for the artist') do
  #     test_artist
  #   end

  describe('.all') do
    it('returns an empty array') do
     expect(Artist.all()).to(eq([]))
   end
 end

end
