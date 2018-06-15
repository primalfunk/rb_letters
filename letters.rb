
puts "Please enter a sentence: "
sentence = gets
words = sentence.split(' ')
counts = {}
answer = {}

words.each do |word|
  for letter in ('a'..'z')
    count = word.count(letter)
    counts[letter] = count
  end
  #max value of counts is the most repeated letter
  answer[word] = counts.values.max
end

if answer.values.max > 1
  puts "The word containing the most letter repetition is: #{answer.key(answer.values.max)}"
elsif
  puts "No word with enough repeated letters."
end