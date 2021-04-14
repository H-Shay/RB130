

# Output:
# Before: hi
# After: HI


def compare(word)
  puts "Before: #{word}"
  after = yield(word)
  puts "After: #{after}"
end

compare('hi') { |word| word.upcase }



