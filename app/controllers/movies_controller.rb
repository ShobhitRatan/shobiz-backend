class MoviesController < ApplicationController
    def index 
        default = {} 
        movies = Movie.all 
        default[:include] = [:title, :language, :overview, :release_date, :reviews]
        render json: movies 
    end 
    
    def show 
        default = {} 
        movie = Movie.find(params[:id]) 
        default[:include] = [:title, :language, :overview, :release_date, :reviews] 
        render json: movie 
    end 
end
