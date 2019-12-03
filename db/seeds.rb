puts "Deleting existing data..."
Climb.destroy_all

puts 'Fetching climb data...'

request_url = "https://www.mountainproject.com/data/get-routes?routeIds=106509898,106746292,106690707,108051791,112179186,112179197,109538712,105806397,106673057,113699508,106200481,107055014,116375818,114184138,105907090,106008982,108255583,106616292,106408175,105801065,109555842,106511486,106089261,112934306,109386365,105863822,105845493,107070687,105862873,105924807,105798994,105752749,106873351,106125702,105750454&key=200473445-54b1347b4cae4a3f12a8a634902457aa"

request = RestClient::Request.execute(
  method: :get,
  url: request_url)

climbs = JSON.parse(request)


climbs['routes'].each do |climb|
  Climb.create(
  climb_id: climb['id'],
  name: climb['name'],
  rating: climb['rating'],
  stars: climb['stars'],
  imgSmallMed: climb['imgSmallMed'],
  latitude: climb['latitude'],
  longitude: climb['longitude'],
  location: climb['location'],)
end

150.times do
  Comment.create(
    comment: 'I am a comment',
    climb_id: Climb.all.sample.id)
end

puts 'DB seeded!'
