# require_relative '../controllers/index'

class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.anagrams(word)
    Word.where(susun: word.chars.sort.join).pluck(:perkataan)
  end

  def susun_the_perkataan
    self.susun = self.perkataan.chars.sort.join
    self.save
  end
end


#  def canonical(word)
#   # Magic goes here
#   w = word.downcase.chars.sort.join
# end

# def is_anagram?(word1, word2)
#   canonical(word1) == canonical(word2)
# end

# def anagrams_for(word, dictionary)
#   contents = []
#   dictionary.each {|x| contents << x if is_anagram?(word, x)}
#   contents
# endWord.