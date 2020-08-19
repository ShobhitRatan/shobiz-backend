class ReviewsController < ApplicationController
    def index 
        default = {} 
        reviews = Review.all 
        default[:include] = [:movie_id, :user_id, :content, :likes] 
        render json: reviews 
    end 

    def show 
        default = {} 
        review = Review.find(params[:id]) 
        default[:include] = [:movie_id, :user_id, :content, :likes] 
        render json: review 
    end 

    def create 
        default = {} 
        review = Review.create(review_params) 
        default[:include] = [:movie_id, :user_id, :content, :likes] 
        render json: review 
    end 

    def update 
        default = {}
        review = Review.find(params[:id]) 
        review.update(review_params) 
        default[:include] = [:movie_id, :user_id, :content, :likes] 
        render json: review 
    end 

    def destroy 
        review = Review.find(params[:id]) 
        unless review.nil?
            review.destroy
            render json: review
        else  
            render json: {error: "Review not found"}, status: 404 
        end   
    end 

    private 
    def review_params 
        params.permit(:movie_id, :user_id, :content, :likes) 
    end 
end
