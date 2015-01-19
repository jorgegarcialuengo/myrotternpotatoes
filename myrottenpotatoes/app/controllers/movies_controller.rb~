class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] # retreave the ID from URI route
    @movie = Movie.find(id) # lookup movie by unique ID
    # will render app/views/movies/show.html.haml by default
  end
end

