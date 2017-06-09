get '/questions' do
  @questions = Questions.all

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

get '/questions/:question_id' do
  question = Question.find(params[:question_id])

  erb :'/questions/questions_show'
end

get '/questions/:question_id/edit' do
  question = Question.find(params[:question_id])

  erb :'/questions/questions_edit'
end

post '/questions/id' do

end


