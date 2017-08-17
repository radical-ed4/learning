movies = { Trainspotting: 5, Sleepy_Hollow: 4, The_Crow: 4, Catwoman: 1, Pinapple_Express: 3, Matrix_3: 1}

loop do
  puts "What would you like to do?
    Type
    add:     to add a movie and its rating
    update:  to update a movie rating
    display: to show all movies and ratings
    delete:  to delete a movie from your list
    quit:    to quit the program"
    
  choice = gets.chomp.downcase

  case choice
  
  when "add"
    puts "What's the movie title?"
    title = gets.chomp.capitalize
    if movies[title.to_sym] == nil # same as .nil?
      puts "What the rating for this movie ? (on a scale from 0 to 5)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie has been added!"
    else
      puts "The movie title already exists in your list!"
    end
  
  when "update"
    puts "What's the title of the movie you would like to update?"
    title = gets.chomp.capitalize
    if movies[title.to_sym] == nil
      puts "The movie does not exist in your list"
    else
      puts "What's the new rating for #{title}?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie rating has been updated!"
    end
  
  when "display"
    movies.each { |title, rating| puts "#{title}: #{rating}" }
  
  when "delete"
    puts "Which movie do you want to delete?"
    title = gets.chomp.capitalize
    if movies[title.to_sym] == nil
      puts "The movie does not exist in your list"
    else
      movies.delete(title)
      puts "The movie has been deleted!"
    end
  
  when choice = "quit"
    break

  # If selection is not one of the 5 above, display error message
  else
    puts "Your entry is incorrect, do you want to try again?"
    choice = gets.chomp.downcase
    # Quit the program if the answer is not yes, otherwise start the program from the beginning using loop
    if choice == "no"
      break
    elsif choice != "yes"
      puts "I don't understand, sorry! You will now exit the program"
      break
    end 
  end
end