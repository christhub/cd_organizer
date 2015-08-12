class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@artists.length().+(1)
    @cds = []
  end

  define_method(:name) do
    @name
  end

  define_method(:id) do
    @id
  end

  define_method(:cds) do
    @cds
  end

  define_method(:artists) do
    @@artists
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end
end
