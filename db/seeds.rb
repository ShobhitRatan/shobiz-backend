# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "pry" 
require 'rest-client'
require 'json'
Movie.destroy_all 
User.destroy_all 
Review.destroy_all 

e = User.create(username: "Eric", password: "abc123")
j = User.create(username: "Jallen", password: "abc123")
m = User.create(username: "Meghann", password: "abc123")
barry = User.create(username: "Barry Allen", password: "Pass$123") 

api_key = ENV["api_key"]
def tmdb_api(key, page) 
    base_url="https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
    key=key
    page="&page=" + page.to_s  
    adult= "&adult=false"
    full_url = base_url + key + page + adult 
    restClientResponseObject = RestClient.get(full_url) 
    jsonButItsAString = restClientResponseObject.body 
    workable_hash = JSON.parse(jsonButItsAString) 
end 


(1..500).each do |i| 
    # image_domain = "https://image.tmdb.org/t/p/w500"
    tmdb_api(api_key, i.to_s)["results"].each do |movie|
        if movie["poster_path"] && movie["backdrop_path"] 
            Movie.create(
                title: movie["title"],
                language: movie["original_language"], 
                overview: movie["overview"],
                release_date: movie["release_date"],
                image_1: "https://image.tmdb.org/t/p/w500" + movie["poster_path" ],
                image_2: "https://image.tmdb.org/t/p/w500" + movie["backdrop_path"]
             )
        end 
    end 
end 

100.times do 
    Review.create({
        movie: Movie.all.sample,
        user: User.all.sample,
        content: Faker::Movies::Ghostbusters.quote,
        likes: rand(1..1000)
    })
end 