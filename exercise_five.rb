# # 3. Write a method that counts the number of vowels in a word.

puts "hello, Enter a phrase and i'll tell you how many vowels are in it"
puts ":note - in this method 'y' is NOT considered a vowel"
phrase = gets.chomp.to_s

def number_of_vowels(word)
  vowels = ['a','e','i','o','u']
  a = word.downcase.split('')
  count = 0
  a.each do |l|
    vowels.each do |v|
      v == l ? count += 1 : next
    end
  end
  puts "There are #{count} vowels on your text "
end

number_of_vowels(phrase)