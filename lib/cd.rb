class CD
  @@all_cds = []

  define_method(:initialize) do |title, artist, year|
    @title = title
    @artist = artist
    @year = year
  end

  define_method(:title) do
    @title
  end

  define_method(:artist) do
    @artist
  end

  define_method(:year) do
    @year
  end

  define_singleton_method(:all) do
    @@all_cds
  end

  define_method(:save) do
    @@all_cds.push(self)
  end

  define_singleton_method(:clear) do
    @@all_cds = []
  end

end
