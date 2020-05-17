require_relative '../config/environment.rb'


vincent = Artist.new("Van Gogh", 30)
leo = Artist.new("Leonardo Luna", 20)
chi_art_museum = Gallery.new("Chicago Art Museum", "Chicago")
starry_night = Painting.new("Starry Night", 25000, vincent, chi_art_museum)

binding.pry

puts "Bob Ross rules."
