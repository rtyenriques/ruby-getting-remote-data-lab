# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
attr_accessor :url
def initialize(url)
@url = url
end

URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

def get_response_body
    uri = URI.parse(URL)
    response = Net::HTTP.get_response(uri)
    response.body
end
 
def parse_json
  data = JSON.parse(self.get_response_body)
    data.collect do |nu_data|
        nu_data
end
end

end