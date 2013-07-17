get '/' do
  p params
  # Main User Interface
  erb :index
end

get '/url/new_url' do
  @long_url = Url.create(params[:long_url])
  erb :new_url
end

get '/usr/:user_id' do
  # var = params[user_id]
  # CRUD user data
  # method(var)
  erb :user
end

post '/' do
  # @long_url = Url.create(params[:long_url])
  # p params
  # erb :index , !=request.xhr? , layout :false
end
