# Largest Factor
# ----------------------------------------
# Write a method, #largest_factor, that accepts an integer as an argument and returns
# the largest factor of that integer

def find_factors(n)
  factors = []
  index = 1
  until index == n
     if n % index == 0
       factors << index
     end
    index += 1
  end
  factors
end

def largest_factor(n)
  value = 0
  find_factors(n).each do |f|
     if f > value 
       value = f
     end
  end
  value
end

# puts "---------Largest Factor----------"
puts largest_factor(10) == 5
puts largest_factor(143) == 13
puts largest_factor(27) == 9
puts largest_factor(17) == 1
