# Write your code here



class GetRequester

  def initialize(url)

  end


  # Setting up the GET request
  def get_response_body
    uri = URI.parse(url) #parse the url being passed in with 'URI.parse'
    response = NET::HTTP.get_response(uri) # 'GET' the response of the uri with 'NET::HTTP.get_resonse' and pass in the uri variable
    response.body #return the 'body' from the 'response' variable
  end

end
