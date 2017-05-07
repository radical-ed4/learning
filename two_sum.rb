# Two-Sum

# Define a method, #two_sum, that accepts an array and a target sum (integer) as arguments.
# The method should return true if any two integers in the array sum to the target.
# Otherwise, it should return false. Assume the array will only contain integers.

def two_sum(array, target)
  # creating a loop inside a loop to iterate through all the numbers
  # need to have distinctive names for number and index between the two loops
  array.each.with_index do |number_a, index_a|
    array.each.with_index do |number_b, index_b|
      # conditional statement to not repeat the same additions
      if index_b > index_a
        sum = number_a + number_b
        # early return when desired condition is met
        if sum == target
          return true
        end
      end
    end
  end
  # if all numbers are exhausted and no match has been found, return false
  return false
end

# puts "------Two Sum------"
puts two_sum([1,2,3,4,5,6], 8) == true
puts two_sum([1,2,3,4,5,6], 18) == false
puts two_sum([1,3,6], 6) == false
puts two_sum([1,8,2,1], 0) == false

