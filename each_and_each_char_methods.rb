def array_each
  ["a", "b", "c"].each do |letter|
  end
end
p array_each

def string_each_char(name)
  # Continuously modifying a string occupies unnecessary memory. 
  # It's better to turn it into an array, then join it at the end.
  new_name_array = []
  name.each_char do |l|
    if l == "a"
      new_name_array << "X" 
    else
      new_name_array << l
    end
  end
  new_name_array.join
end
puts new_name_string = string_each_char("Giada")