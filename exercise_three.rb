# 1. Convert an Array of tuples to a Hash in Ruby
# Suppose I have the following Array of tuples `[ ['a',1], ['b',2], ['c',3] ]`
#  How can I convert this to a Hash?

arr = [ ['a',1], ['b',2], ['c',3] ]

def make_me_a_hash(array)
  if array.class == Array
    result = array.to_h
  else
    puts "Sorry this is an array method, please pass an array as the argument"
  end
  puts result
end

make_me_a_hash(arr)