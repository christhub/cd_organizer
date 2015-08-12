require('rspec')
require('cd')

describe(CD) do
  before() do
    CD.clear()
  end

  describe('#title') do
    it('returns the title of the CD') do
      new_cd = CD.new('Currents', 2015)
      expect(new_cd.title()).to(eq('Currents'))
    end
  end

  describe('#year') do
    it('returns the title of the CD') do
      new_cd = CD.new('Currents', 2015)
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
      new_cd = CD.new('Currents', 2015)
      new_cd.save()
      expect(CD.all()).to(eq([new_cd]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved CDs') do
      new_cd = CD.new('Currents', 2015).save()
      CD.clear()
      expect(CD.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the CD') do
      new_cd = CD.new("Currents", 2015)
      new_cd.save()
      expect(new_cd.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a vehicle by its ID number') do
      new_cd = CD.new("Currents", 2015)
      new_cd.save()
      new_cd2 = CD.new("Lonerism", 2012)
      new_cd2.save()
      expect(CD.find(new_cd.id())).to(eq(new_cd))
    end
  end

end
