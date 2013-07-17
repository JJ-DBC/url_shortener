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
  # Url.all(:long_url)
  # CRUD user data
  # show all links
  erb :user
end

post '/' do
  @long_url = Url.create(:long_url => params[:long_url])
  #logic for short url!
  #validate url
  redirect to("/user?url=#{params[:long_url]}")
end
