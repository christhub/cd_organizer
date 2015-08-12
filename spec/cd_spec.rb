require('rspec')
require('cd')

describe(CD) do
  describe('#title') do
    it('returns the title of the CD') do
      new_cd = CD.new('Currents', 'Tame Impala', 2015)
      expect(new_cd.title()).to(eq('Currents'))
    end
  end

  describe('#artist') do
    it('returns the artist of the CD') do
      new_cd = CD.new('Currents', 'Tame Impala', 2015)
      expect(new_cd.artist()).to(eq('Tame Impala'))
    end
  end

  describe('#title') do
    it('returns the title of the CD') do
      new_cd = CD.new('Currents', 'Tame Impala', 2015)
      expect(new_cd.year()).to(eq(2015))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(CD.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a CD to the array of saved CDs') do
      new_cd = CD.new('Currents', 'Tame Impala', 2015)
      new_cd.save()
      expect(CD.all()).to(eq([new_cd]))
    end
  end

end
