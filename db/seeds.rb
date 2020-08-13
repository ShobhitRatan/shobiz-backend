# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'
require 'json'
Movie.destroy_all 

api_key = ENV["api_key"]
def tmdb_api(key, page) 
    base_url="https://api.themoviedb.org/3/discover/movie?sort_by=popularity.desc&api_key="
    key=key
    page="&page=" + page 
    adult= "&adult=false"
    full_url = base_url + key + page + adult 
    restClientResponseObject = RestClient.get(full_url) 
    jsonButItsAString = restClientResponseObject.body 
    workable_hash = JSON.parse(jsonButItsAString) 
end 

page1 = tmdb_api(api_key, "1")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page2 = tmdb_api(api_key, "2")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page3 = tmdb_api(api_key, "3")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page4 = tmdb_api(api_key, "4")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page5 = tmdb_api(api_key, "5")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page6 = tmdb_api(api_key, "6")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page7 = tmdb_api(api_key, "7")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page8 = tmdb_api(api_key, "8")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page9 = tmdb_api(api_key, "9")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page10 = tmdb_api(api_key, "10")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page11 = tmdb_api(api_key, "11")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page12 = tmdb_api(api_key, "12")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page13 = tmdb_api(api_key, "13")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page14 = tmdb_api(api_key, "14")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page15 = tmdb_api(api_key, "15")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page16 = tmdb_api(api_key, "16")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page17 = tmdb_api(api_key, "17")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page18 = tmdb_api(api_key, "18")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page19 = tmdb_api(api_key, "19")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page20 = tmdb_api(api_key, "20")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page21 = tmdb_api(api_key, "21")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page22 = tmdb_api(api_key, "22")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page23 = tmdb_api(api_key, "23")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page24 = tmdb_api(api_key, "24")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page25 = tmdb_api(api_key, "25")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page26 = tmdb_api(api_key, "26")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page27 = tmdb_api(api_key, "27")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page28 = tmdb_api(api_key, "28")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page29 = tmdb_api(api_key, "29")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page30 = tmdb_api(api_key, "30")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page31 = tmdb_api(api_key, "31")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page32 = tmdb_api(api_key, "32")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page33 = tmdb_api(api_key, "33")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page34 = tmdb_api(api_key, "34")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page35 = tmdb_api(api_key, "35")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page36 = tmdb_api(api_key, "36")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page37 = tmdb_api(api_key, "37")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page38 = tmdb_api(api_key, "38")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page39 = tmdb_api(api_key, "39")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page40 = tmdb_api(api_key, "40")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page41 = tmdb_api(api_key, "41")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page42 = tmdb_api(api_key, "42")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page43 = tmdb_api(api_key, "43")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page44 = tmdb_api(api_key, "44")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page45 = tmdb_api(api_key, "45")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page46 = tmdb_api(api_key, "46")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page47 = tmdb_api(api_key, "47")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page48 = tmdb_api(api_key, "48")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page49 = tmdb_api(api_key, "1")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page50 = tmdb_api(api_key, "50")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page51 = tmdb_api(api_key, "51")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page52 = tmdb_api(api_key, "52")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page53 = tmdb_api(api_key, "53")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page54 = tmdb_api(api_key, "54")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page55 = tmdb_api(api_key, "55")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page56 = tmdb_api(api_key, "56")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page57 = tmdb_api(api_key, "57")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page58 = tmdb_api(api_key, "58")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page59 = tmdb_api(api_key, "59")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

page60 = tmdb_api(api_key, "60")["results"].each do |movie|
    Movie.create(
       title: movie["title"],
       language: movie["original_language"], 
       overview: movie["overview"],
       release_date: movie["release_date"] 
    )
end 

