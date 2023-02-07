# Write your code here
require 'pry'

# normal approach
def reverse_each_word(sentence)
    words = sentence.split
  reversed_words = []

  words.each do |word|
    reversed_words << word.reverse
  end

  reversed_words.join(" ")
    
end


# now why not use map?
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map do |word|
      word.reverse
    end
  
    reversed_words.join(" ")
  end


# since you know map why not us proc shorthand or "pretzel colon"
def reverse_each_word(sentence)
    words = sentence.split
  
    reversed_words = words.map(&:reverse)
  
    reversed_words.join(" ")
  end


 # method chaining always practice this it will booste your performance plus unaeza ringa
 def reverse_each_word(sentence)
    sentence.split.map[&:reverse].join("")
     
 end