require "json"
require "open-uri"

puts "Destroying"
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Creating...."

url = "https://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
movies = user["results"]
puts "Creating movies..."

movies.each do |movi|
  movie = Movie.create!(title: movi["title"], overview: movi["overview"], rating: movi["vote_average"], poster_url: "https://image.tmdb.org/t/p/original#{movi["poster_path"]}")
  puts "Created #{movie.title}"
end
puts "Finished!"
