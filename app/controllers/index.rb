get '/:word' do

  # word = Word.find(perkataan: params[:word])

  # word.anagrams
  # word.save
  # p @matching
  @matching = Word.anagrams(params[:word])
 # puts @matching
  # Look in app/views/index.erb
  erb :index
end

get '/' do
  erb :index
end


# get '/' do
#   @aunty = params[:aunty]
#   puts @aunty
#   # Look in app/views/index.erb
#   erb :index
# end

post '/' do
  # puts params[:user_input]
  # word = Word.new(perkataan: params[:user_input])
  @matching = Word.anagrams( params[:user_input])

#   if word == @matching
#   redirect to("/?word=yes")
#   # @matching = Word.anagrams(word)

#   # Look in app/views/index.erb
# end
  erb :index
end


# post '/aunty' do
#   speech = params[:user_input]
#     if speech == speech.upcase
#     redirect to("/?aunty=Yippie")
#     else
#     redirect to("/?aunty=SPEAK UP KIDDO!")
#     end