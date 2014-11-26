get '/:word' do

  @matching = Word.anagrams(params[:word])
  # Look in app/views/index.erb
  erb :index
end

get '/' do
  erb :index
end

post '/' do
  @matching = Word.anagrams( params[:user_input])

  erb :index
end
