# Define a method that given an array, returns another array of only the unique elements from the first. 
# Do not use the built-in uniq method.
def uniq(arr)
  # Create a new array to store unique elements 
  unique_array = []
  
  # Iterate through each array element
  arr.each do |element|
    # If current element exists in new array, skip, else add to new array 
    if !unique_array.include?(element)
      unique_array << element
    end   
  end
  
  # Return new array of unique elements
  unique_array
end

p uniq([1, 2, 1, 3, 3])
p uniq([5, 5, 5, 5])
