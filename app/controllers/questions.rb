get '/questions' do
  @questions = Question.all

  erb :'/questions/questions_index'
end

get '/questions/new' do
  if logged_in?
    erb :'/questions/questions_new'
  else
    @errors = ['Sorry, you need to sign in to post a new question.']
    erb :'/questions/questions_index'
  end
end

post '/questions' do
  question = Question.new(params[:question])

  if question.save
    redirect '/questions'
  else
    @errors = question.errors.full_messages
    erb :'/questions/questions_index'
  end
end

get '/questions/:id' do
  @question = Question.find(params[:id])
  @comment = Comment.new
  @answer = Answer.new

  erb :'/questions/questions_show'
end

get '/questions/:id/edit' do
  question = Question.find(params[:id])

  erb :'/questions/questions_edit'
end

post '/questions/:id' do
  question = Question.find(params[:id])
  question.assign_attributes(params[:question])

  if question.save
    redirect '/questions'
  else
    erb :'questions/questions_edit'
  end
end

post '/questions/:id' do
  question = Question.find[params[:id]]
  question.destroy

  redirect '/questions'
end

