post '/pictures' do
  @picture = Picture.find_by(user: current_user)
  if @picture
    @picture.update(@params)
  else
    params = @params.merge({user: current_user})
    Picture.create(params);
  end
end

post '/texts' do

  @picture = Picture.find_by(user: current_user)
  if @picture
    @picture.update(@params)
  else
    params = @params.merge({user: current_user})
    Picture.create(params);
  end
end
