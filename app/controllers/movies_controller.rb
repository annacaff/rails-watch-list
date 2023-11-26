require 'open-uri'
require 'json'

class MoviesController < ApplicationController
  def top_rated
    url = 'http://tmdb.lewagon.com/movie/top_rated'
    response = URI.open(url).read
    @movies = JSON.parse(response)['results']
  end
end
