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

end
