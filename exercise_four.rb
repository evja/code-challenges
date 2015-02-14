# 2. Write a method that accepts a word and returns true
# if the word is a palindrome, and false if it is not.

def is_palindrome?(word)
  if word.class == String
    word = word.downcase
    result = word.reverse == word ? true : false
  else
    puts "please pass a string as the argument"
  end
  puts result
end

# word_one = "Racecar"
# word_two = "Hello"
# array = ["hello", "world"]
# hash = {one: "one", two: "two",}

is_palindrome?(word_one)