get '/challenges' do
  @challenges = Challenge.all #define instance variable for view
  erb :'challenges/index' #show all challenges
end

post '/challenges' do
  @challenge = Challenge.new(url: params[:url])
  require 'uri'
  require 'net/http'

  url = URI("https://api.github.com/repos/sf-fireflies-2017/cheering-mascot-sinatra-1-synchronous-forms-challenge/forks")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request["authorization"] = 'Basic cmF2aWJram9zaGk6YmViY2U2ZTZmODZlMzRkMjg0ZWVlZGQxZjMwNGZhMGIxMTJhNWU5NA=='
  request["cache-control"] = 'no-cache'
  request["postman-token"] = '8b74661b-fc38-c63a-64aa-eabc38c573cb'

  response = http.request(request)
  challenges = response.read_body
end

get '/challenges/:id' do
  #gets params from url
  @challenge = Challenge.find(params[:id]) #define instance variable for view
  erb :'challenges/show' #show single challenge view
end