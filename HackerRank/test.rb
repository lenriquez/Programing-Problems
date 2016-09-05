


require 'net/http'
require 'json'
require 'date'
require 'pry'

uri = URI("https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22bogota%2C%20colombia%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
json = JSON.parse(Net::HTTP.get(uri))

date = Date.today.strftime('%d %b %Y').strip
weather = json["query"]["results"]["channel"]["item"]["forecast"][0..2]

weather.each do |forecast|
	puts " Weather cast condition for #{forecast['date']}"
	puts " High #{forecast['high']}"
	puts " Conditions: #{forecast['text']}"
	puts
end