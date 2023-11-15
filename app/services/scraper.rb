# # Using the net/http method
# require "open-uri"
# require "net/http"

# url = "https://en.wikipedia.org/wiki/Douglas_Adams"

# # Convert URL string into a URI object using the open-uri gem
# uri = URI.parse(url)
# # Pass URI object to the get_response method which provides a Net::HTTPResponse object
# response = Net::HTTP.get_response(uri)
# # Use the Net::HTTPResponse ojbect's body method to provide the entire HTML document
# html = response.body
# # print out the html
# puts html

# # Using the httparty method
# require "httparty"

# # Make a GET request using httparty gem
# response = HTTParty.get("https://en.wikipedia.org/wiki/Douglas_Adams")

# # Use the HTTParty::Response ojbect's body method to provide the entire HTML document
# html = response.body
# puts html

# Making a get request using OpenURI (Open URIcomes included with standard ruby library)

require "open-uri"

html = URI.open("https://en.wikipedia.org/wiki/Douglas_Adams")

# Parsing with Nokogiri
require "nokogiri"
# Returns a Nokogiri::HTML::Document object aka the DOM of current document
doc = Nokogiri::HTML(html)

# Selects all the paragraph tag elements & fetches text content
description = doc.css("p").text
