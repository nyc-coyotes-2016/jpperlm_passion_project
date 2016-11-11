get '/users/new' do
  @user = User.new()
  erb :'/users/new'
end

get '/users/:id' do
  @picture = Picture.find_by(user: current_user)
  erb :'/users/index'
end

get '/users' do
  erb :'/users/index'
end

post '/users' do
  @user = User.new(params[:user])

  if @user.save
    session[:user_id] = @user.id
    redirect "/"
  else
    erb :'/users/new'
  end
end
