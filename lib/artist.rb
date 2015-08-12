class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
  end

  define_method(:name) do
    @name
  end

  # define_method(:id) do

  define_singleton_method(:all) do
   @@artists
  end

end
