# Scraping with Nokogiri!

## Key Topics:
# 1. What is Scraping?
# 2. How to use Nokogiri
# 3. Creating instances with Nokogiri
# 4. Scraping "2 layers deep"
# 5. Making a Scraper class
# 6. Ultimately creating the skeleton of a CLI app

require 'nokogiri'
require 'pry'


#1. When you're preparing to scrape, look at a page and try to find out what each element that holds information that you want has in common.

#In this case, every review is housed in a div tag with the classname of "review"

#2. Use the selector to collect an array of the elements that you want to iterate over. In this case, we used .css('.review') to collect all of the review elements that house the information that we need for our app

#3. Determine the selectors that grab the pertinent information inside each element. In this case we used :

#element.css('.artist-list').text to grab the name of the artist
#element.css('h2').text to grab the name of the album
#element.css('.display-name--linked').text to grab the reviewer's name

#4. Iterate over each element, apply the selectors and save the values to variables, pass the variables as arguments to the new instance of your class.

#Information about iterators!
#map - returns the same amount of elements as the initial collection BUT does transformation on each one
#select
#find
#each - always returns the initial collection, doesn't matter what you do in the block


#https://www.w3schools.com/cssref/css_selectors.asp
#two ways to grab elements by their css
# tag selector => div, h2, h1, p, span
# class selector uses the '.'

#### WELCOME TO THE PITCHFORK APP
### HERE ARE THE 12 MOST RECENT PITCHFORK REVIEWS

#1. YoungBoy Never Broke Again by Alphonse Pierre
#2 Chuky 73 / Fetti031 by Matthew Ismael Ruiz
#...etz

# Type in the number of the review to see more

# 3
# The Italian electronic producer and arch conceptualist finds a new flamboyance in astoundingly ornate, song-like pieces of deconstructed trance and video-game chirps.

0
