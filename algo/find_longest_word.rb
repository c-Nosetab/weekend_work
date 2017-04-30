def find_longest_word(sentence)
longest = sentence.split[0]

  sentence.tr('!?,\'\".;:~`#$%^&_123456789', "").split.each do |word|
    if word.length > longest.length
      longest = word
    elsif word.length == longest.length
      if longest.include?(word)
        next
      else
        longest << " " + word
      end
    end
  end
  longest
end

# Driver code - don't touch anything below this line.
puts "TESTING find_longest_word..."
puts

result = find_longest_word("What is the longest word in this phrase?")

puts "Your method returned:"
puts result
puts

if result == "longest"
  puts "PASS!"
else
  puts "F"
end