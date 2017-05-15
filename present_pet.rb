# Present Pet
# ----------------------------------------
# Write a method, #present_pet, that takes two arguments:
# a pet name and an animal type, both strings. It should return a string
# that announces the pet (e.g. if given "Todd" and "turtle", it
# should return "Todd the turtle has arrived.").

def present_pet(pet_name, animal)
  "#{pet_name} the #{animal} has arrived."
end

puts "---------Present Pet----------"
puts present_pet("Sam", "salamander") == "Sam the salamander has arrived."
puts present_pet("Roger", "rabbit") == "Roger the rabbit has arrived."
puts present_pet("Catie", "canary") == "Catie the canary has arrived."
