class HomeController < ApplicationController
  def index
    @genres = Tmdb::Genre.list
    @popular_movies = Tmdb::Movie.popular[0..3]
    @top_rated_movies = Tmdb::Movie.top_rated[0..3]
    @profiles = current_user.profiles
    
    # @search = Tmdb::Search.new
    # @search.resource('genre')
    # @search.query(@genres.pluck(:identification).sample)
    
  end
end
