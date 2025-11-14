=begin
this includes rest api - we are not aware about(yet)
Given a country name you need to query the rest api 
at https://jsonmock.hackerrank.com/api/countries?name=country 
and return the capital citys name.the response is a json object with 5 fields

The response is a JSON object with 5 fields. The essential field is data
which is either an empty array or an array with country's information.

If the country is found, the data array contains exactly 1 element.
If not, return -1
=end

require 'uri'

def getCapitalCity(country)
  url = URI("https://jsonmock.hackerrank.com/api/countries?name=#{country}")
  response = Net::HTTP.get(url)
  data = JSON.parse(res)

  if data['data'].empty?
    return '-1'
  else
    return data['data'][0]['capital']
  end
end

