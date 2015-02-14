#count the number of odd numbers in a given number

def count_odd(array)
  array.each_with_index do |n, i|
    if i.odd?
      count += 1
    end
  end
    puts "you have #{count} odd numbers in your array"
end
a = (1..10).to_a

count_odd(a)
