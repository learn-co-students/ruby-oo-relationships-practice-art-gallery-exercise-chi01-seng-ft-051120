class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|p| p.artist == self}
  end

  def galleries
    paintings.map {|p| p.gallery}
  end

  def cities
    galleries.map {|g| g.city}
  end

  def self.total_experience
    total = 0.0
    @@all.each {|artist| total += artist.years_experience}
    total
  end

  def average_per_year
    (self.paintings.count / self.years_experience)
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.average_per_year}
  end

  def new_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
