# Puts While/Each
# ----------------------------------------
# Write a method, #puts_while, that accepts an array as an argument and will puts
# every element in the array. Do this using a while loop.

def puts_while(array)
  counter = 0
    while counter < array.length
      puts array[counter]
      counter += 1
    end
end

puts_while(["a", "b", "c"])

# # Write a method, #puts_each, that accepts an array as an argument and will puts
# # every element in the array. Do this using Array's #each method
def puts_each(array)
  array.each do |letter|
    puts letter
  end  
end


puts_each(["a", "b", "c"])
