get '/' do
  p params
  # Main User Interface
  erb :index
end

post '/' do
  # Post form logic = link redirecting
end

get '/usr/user_id' do
  # var = params[user_id]
  # CRUD user data
  # method(var)
  # erb :view_user with data
end
