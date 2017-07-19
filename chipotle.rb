require 'unirest'

url = 'https://savorwavs.com/api/offer/request'
puts "First name:"
first = gets.chomp
puts "Last name: "
last = gets.chomp
puts "Cell Phone: (eg. +15858675309) "
cell=gets.chomp
puts "Zip code: "
zipcode=gets.chomp

response = Unirest.post url,
                        headers:{
                          'Accept'=>'application/json',
                          'Accept-Encoding'=>'gzip, deflate, br',
                          'Accept-Language'=>'en-US,en;q=0.8',
                          'Connection'=>'keep-alive',
                          'Content-Type'=>'application/json',
                          'Host'=>'savorwavs.com',
                          'Origin'=>'https://savorwavs.com',
                          'Referer'=>'https://savorwavs.com/buy-one-get-one',
                          'User-Agent'=>'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/55.0.2883.87 Chrome/55.0.2883.87 Safari/537.36'
},
                        parameters:{
                          'firstName'=>first,
                        	'lastName'=>last,
                        	'phoneNumber'=>cell,
                        	'optedIn'=>'false',
                        	'zip'=>zipcode
                        }
puts "Response code: #{response.body}"
