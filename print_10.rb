
# Print 10
# ----------------------------------------

# Write a method, #array_print_10, that puts the numbers 0 - 9 using an array
# and the each method

def array_print_10
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].each do |n|
    puts n
  end
end
array_print_10
puts ""

# Write a method, #range_print_10, that prints the numbers 0 - 9 using a range
# and the each method

def range_print_10
  (0..9).each do |n|
    puts n
  end
end
range_print_10
puts ""

# Write a method, #integer_print_10, that prints the numbers 0 - 9 using an integer
# and the times method

def integer_print_10
  3.times do |n|
    puts n
  end
end
integer_print_10
puts ""

# Write a method in one line, #integer_print_10_one_line, that prints the 
# numbers 0 - 9 using an integer and the times method
def integer_print_10_one_line
  10.times {|n| puts n}
end
integer_print_10_one_line