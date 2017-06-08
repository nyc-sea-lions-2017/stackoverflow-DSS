get "/login" do
  erb :"users/login"
end

post "/login" do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = ["Username or Password is Incorrect"]
    erb :"users/login"
  end
end

get "/logout" do
  session.clear
  redirect "/"
end
