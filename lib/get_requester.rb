# Write your code here
require 'net/http'
require 'open-uri'


class GetRequester #define constant class

  attr_accessor :url

  def initialize(url) #define an 'initialize' method passing in a URL
  end

  # Setting up the GET request
  def get_response_body
    uri = URI.parse(url) #parse the url being passed in with 'URI.parse'
    response = NET::HTTP.get_response(uri) # 'GET' the response of the uri with 'NET::HTTP.get_resonse' and pass in the uri variable
    response.body #return the 'body' from the 'response' variable
  end

end
