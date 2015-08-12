class CD
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
  
end
