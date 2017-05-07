# Find Factors
# ----------------------------------------
# Define a method, #find_factors(n, possible_factors), that accepts two arguments:
# an integer, n, and an array of integers, possible_factors. Find all the elements
# in possible_factors that are factors of n.

def find_factors(n, possible_factors)
  result = []
  possible_factors.each do |i|
    if n % i == 0 
      result << i
    end
  end  
  result
end


#puts "---------Find Factors----------"
puts find_factors(33, [1, 10, 11, 15, 18, 20])
puts find_factors(81, [2, 3, 9, 16, 51, 53])
puts find_factors(17, [2, 3, 4, 5, 6, 7, 8, 9])
puts find_factors(33, [1, 10, 11, 15, 18, 20]) == [1, 11]
puts find_factors(81, [2, 3, 9, 16, 51, 53]) == [3, 9]
puts find_factors(17, [2, 3, 4, 5, 6, 7, 8, 9]) == []