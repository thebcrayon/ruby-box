class Cinema

  attr_reader :movies

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end

  def add_movie(movie)
    @movies << movie
    movie.cinema = self
  end
end

class Movie

  attr_writer :cinema

  def initialize(title, showtime)
    @title = title
    @showtime = showtime
  end

end

circle_cinema = Cinema.new('Cirlce Cinema', '1234 W 3rd')
matrix = Movie.new('Matrix', '7:30pm')
circle_cinema.add_movie(matrix)
p circle_cinema.movies

