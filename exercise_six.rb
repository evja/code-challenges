#reverse a word

def reverse(string)
  string.length == 1 ? string : string.chars.last + reverse(string[0..string.length-2])
end

word = "this the new great way"
reverse(word)