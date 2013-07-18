get '/' do
  erb :index
end

get '/urls' do
  # show all links by user is next here
  @urls = Url.all
  erb :urls
end

get '/user' do
  # CRUD user data
  erb :user
end

post '/' do
  @long_url = Url.create(:long_url => params[:long_url])
  #validate url
  #logic for short url!
  redirect to("/user?long_url=#{params[:long_url]}")
end

get '/:id' do
  @target_url = Url.find(params[:id])
  redirect ("#{@target_url.long_url}")
end
