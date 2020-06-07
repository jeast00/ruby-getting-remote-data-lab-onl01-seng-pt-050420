# Write your code here
# require 'net/http'
# require 'open-uri'


class GetRequester #define constant class


  def initialize(url) #define an 'initialize' method passing in a URL
    @url = url
  end

  # Setting up the GET request
  def get_response_body
    uri = URI.parse(@url) #parse the url being passed in with 'URI.parse'
    response = Net::HTTP.get_response(uri) # 'GET' the response of the uri with 'Net::HTTP.get_resonse' and pass in the uri variable
    response.body #return the 'body' from the 'response' variable
  end

  def parse_json
    information = JSON.parse(self.get_response_body)
    information.collect do |info|
      info
    end
  end

end
