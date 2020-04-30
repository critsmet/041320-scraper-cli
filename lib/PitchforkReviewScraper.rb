#this is going to be the class responsible for all scraping logic
class PitchforkReviewScraper
  def self.scrape_and_make_reviews
    url = "https://pitchfork.com/reviews/albums/"
    html_to_elements = open(url)
    parsed_html_elements = Nokogiri::HTML(html_to_elements)
    review_elements = parsed_html_elements.css('.review')
    review_elements.map do |element|
      binding.pry
      artist_name = element.css('.artist-list').text
      album_title = element.css('h2').text
      reviewer_name = element.css('.display-name--linked').text
      #I also need to grab the link to the review
      new_review = Review.new(album_title, artist_name, reviewer_name)
    end
  end

  def self.scrape_review_blurb(url)
    html_to_elements = open(url)
    parsed_html_elements = Nokogiri::HTML(html_to_elements)
    #...etc
  end
end
