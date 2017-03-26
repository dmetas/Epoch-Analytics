get '/challenges' do
  @challenges = Challenge.all #define instance variable for view
  erb :'challenges/index' #show all challenges
end

get '/challenges/:id' do
  #gets params from url
  @challenge = Challenge.find(params[:id]) #define instance variable for view
  erb :'challenges/show' #show single challenge view
end