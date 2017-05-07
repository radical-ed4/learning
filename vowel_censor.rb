# Vowel Censor
# ----------------------------------------
# Write a method, #vowel_censor that takes in a string and replaces
# any vowels in it with an "X". Do not modify the original string.

# with regex
def vowel_censor(string)
string.gsub(/[aeiouAEIOU]/, 'X')
end

# without regex
def vowel_censor_2(string)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  new_array = [] 
  string.each_char do |l|
    if vowels.include?(l)
      new_array << "X"
    else
      new_array << l
    end
  end
  new_array.join
end


# puts "---------Vowel Censor----------"
puts vowel_censor("Let's order a pizza") == "LXt's XrdXr X pXzzX"
puts vowel_censor("Nitwit, blubber, oddment, tweak") == "NXtwXt, blXbbXr, XddmXnt, twXXk"
puts vowel_censor("Supercalifragilisticexpialidocious") == "SXpXrcXlXfrXgXlXstXcXxpXXlXdXcXXXs"
puts ""
puts vowel_censor_2("Let's order a pizza") == "LXt's XrdXr X pXzzX"
puts vowel_censor_2("Nitwit, blubber, oddment, tweak") == "NXtwXt, blXbbXr, XddmXnt, twXXk"
puts vowel_censor_2("Supercalifragilisticexpialidocious") == "SXpXrcXlXfrXgXlXstXcXxpXXlXdXcXXXs"

