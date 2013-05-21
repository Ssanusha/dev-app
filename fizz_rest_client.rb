require 'rest-client'
require 'json'

url = 'http://localhost:3005/fizz_buzz'

response = RestClient.get(url)

jdata = JSON.parse response.body
puts jdata.inspect
