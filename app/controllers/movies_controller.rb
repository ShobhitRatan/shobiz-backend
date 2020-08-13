class MoviesController < ApplicationController
    def index 
        default = {} 
        movies = Movie.all 
        default[:include] = [:title, :language, :overview, :release_date]
        render json: movies 
    end 
    
    def show 
        default = {} 
        movie = Movie.uniq.find(params[:id]) 
        default[:include] = [:title, :language, :overview, :release_date] 
        render json: movie 
    end 
end
