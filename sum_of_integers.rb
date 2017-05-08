# Define a method that returns the sum of all the non-negative integers up to and including its argument.
def sum_to(int)
  enumerator = 0  
  sum = 0 
  if int == 0 
    return 0 
  elsif int == 1
    return 1 
  else
    begin 
      sum += (enumerator + 1)
      enumerator += 1
    end until enumerator == int
  end
  sum
end
 
def sum_to_using_times(int)
  sum = 0 
  (int + 1).times do |n|
    sum += n
  end
  sum
end 

def sum_to_using_reduce(int)
  (0..int).to_a.reduce(:+)
end

p sum_to(0) 
p sum_to(1)
p sum_to(2)
p sum_to(3)
p sum_to(10)
puts ""
p sum_to_using_times(0) 
p sum_to_using_times(1)
p sum_to_using_times(2)
p sum_to_using_times(3)
p sum_to_using_times(10)
puts ""
p sum_to_using_reduce(0) 
p sum_to_using_reduce(1)
p sum_to_using_reduce(2)
p sum_to_using_reduce(3)
p sum_to_using_reduce(10)