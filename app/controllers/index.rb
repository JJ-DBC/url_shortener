get '/' do
  p params
  #Url.create(:long_url => params[:long_url])
  # Main User Interface
  erb :index
end

get '/url/new_url' do
  @long_url = Url.create(params[:long_url])
  erb :new_url
end

get '/user' do
  # var = params[user_id]
  # CRUD user data
  # method(var)
  erb :user
end

post '/' do
  @long_url = Url.create(:long_url => params[:long_url])
  #logic for short url!
  redirect to("/user")
end
