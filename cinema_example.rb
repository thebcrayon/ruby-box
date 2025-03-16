class Cinema

  attr_accessor :name, :lcoation

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

  attr_accessor :title, :showtime, :cinema

  @@all = []

  def self.show_all_movies
    @@all
  end

  def initialize(title, showtime)
    @title = title
    @showtime = showtime
    @@all << self
  end

end

circle_cinema = Cinema.new("Circle Cinema", "1234 S. Willow Lane")

spiderman = Movie.new("Spiderman", "9:30")
batman = Movie.new("Batman", "11:15")

circle_cinema.add_movie(spiderman)

p circle_cinema.movies