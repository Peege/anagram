require_relative "../app/models/word"

words = File.open("words", "r")
# i = 0
words.each do |word|
  Word.create(perkataan: word.downcase.gsub!(/\n/ , ""), susun: word.downcase.gsub!(/\n/ , "").chars.sort.join)
  # i = i+1
  # break if i ==10
end
