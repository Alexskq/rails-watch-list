require "json"
require "open-uri"

puts "Destroying"
Movie.destroy_all

puts "Creating...."

url = "https://tmdb.lewagon.com/movie/top_rated"
user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
movies = user["results"]
puts "Creating movies..."

movies.each do |movi|
  movie = Movie.create!(title: movi["title"], overview: movi["overview"], rating: movi["vote_average"])
  puts "Created #{movie.title}"
end
puts "Finished!"
