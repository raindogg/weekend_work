# Complete the method called reverse_a_string that accepts a string as a parameter and 
# returns the reverse. The one caveat: Don't use the reverse method that already
# comes with Ruby!

def reverse_a_string(string)
  array = string.split('')
  index_array = []
  final_array = []
  array.each do |letter|
    index_array << array.index(letter)
  end
  index_array.sort! { |a, b| b <=> a }
  index_array.each do |index|
    final_array << array[index]
  end
  final_array.join
end

# Driver code - don't touch anything below this line.
puts "TESTING reverse_a_string..."
puts

result = reverse_a_string("abcde")

puts "Your method returned:"
puts result
puts

if result == "edcba"
  puts "PASS!"
else
  puts "F"
end
