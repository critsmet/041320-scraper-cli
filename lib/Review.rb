#this is going to be the class responsible for handling everything to do with REVIEWS
#from how they're stored, to how they're displayed in the terminal

class Review

  @@all = []

  attr_accessor :album_title, :artist_name, :reviewer_name, :link_to_review

  def initialize(album_title, artist_name, reviewer_name)
    @album_title = album_title
    @artist_name = artist_name
    @reviewer_name = reviewer_name
    @@all << self
  end

  def self.all
    @@all
  end

  #not doing anything with this, just an example of ways to access instance variables
  def puts_reviews_name
    # puts "The person who reviewed this album is named #{self.reviewer_name}"
    # puts "The person who reviewed this album is named #{reviewer_name}"
    puts "The person who reviewed this album is named #{@reviewer_name}"
  end

  def self.print_all_reviews
    #all.each_with_index
    #self.all.each_with_index
    #Review.all.each_with_index
    #@@all.each_with_index
    @@all.each_with_index do |review, index|
      puts "== Review ##{index + 1} ==="
      puts "Artist name: " + review.artist_name
      puts "Album title: " + review.album_title
      puts review.reviewer_name
      puts "=================="
    end
  end

end
