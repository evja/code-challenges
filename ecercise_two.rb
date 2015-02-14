def reverse_every_other(string)
  a = string.split(" ")
  sentence = ""

  a.each_with_index do |w, i|
    i.odd? ? word = w.reverse : word = w
    sentence += " #{word}"
  end
  puts sentence
end
reverse_every_other("in all reality there is no other way to do this oh wait there probably is a way better way")