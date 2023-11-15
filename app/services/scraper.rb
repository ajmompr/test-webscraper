require "open-uri"
require "net/http"

url = "https://en.wikipedia.org/wiki/Douglas_Adams"

# Convert URL string into a URI object using the open-uri gem
uri = URI.parse(url)
# Pass URI object to the get_response method which provides a Net::HTTPResponse object
response = Net::HTTP.get_response(uri)
# Use the Net::HTTPResponse ojbect's body method to provide the entire HTML document
html = response.body
# print out the html
puts html
