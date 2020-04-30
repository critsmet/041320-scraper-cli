#this is going to be the class responsible for running all of our app logic
class PitchforkReviewsCLI

  attr_accessor :username

  def greet
    puts "Hey! Welcome to the Pitchfork Review App"
    puts ""
    puts ""
    puts "What's your name?"
  end

  def get_name
    name = gets.chomp
    self.username = name
    puts "Welcome, #{self.username}"
    system("clear")
  end

  def start_scraping
    puts "We're about to scrape the reviews..."
    puts "this could take a second"
    PitchforkReviewScraper.scrape_and_make_reviews
    puts "Got 'em!"
  end

  def prompt_to_pick_review
    puts "Enter the number of the review you want to read"
  end 

  def run
    system("clear")
    #here is where all of the logic regarding the order of your application goes
    #the run file is likely going to be just full of other methods that you've written
    #elsewhere in the class
    greet
    get_name
    start_scraping
    Review.print_all_reviews
    prompt_to_pick_review
  end

end
