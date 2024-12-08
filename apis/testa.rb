require 'json'
require 'rest-client'

url = "http://127.0.0.1:4567"

resp = RestClient.get("#{url}/oi")

p resp
