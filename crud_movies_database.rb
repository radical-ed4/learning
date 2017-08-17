movies = { Trainspotting: 5, Sleepy_Hollow: 4, The_Crow: 4, Catwoman: 1, Pinapple_Express: 3, Matrix_3: 1}

loop do
  puts "What would you like to do?
	Type
	add:     to add a movie and its rating 
	update:  to update a movie rating
	display: to show all movies and ratings
	delete:  to delete a movie from your list"

	choice = gets.chomp.downcase

	case choice
  
  when "add"
    puts "What's the movie title?"
    title = gets.chomp.capitalize
    if movies[title.to_sym] == nil
      puts "What the rating for this movie ? (on a scale from 0 to 5)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie has been added!"
    else
    puts "The movie title already exists in your list!"
    end
  break
  
  when "update"
    puts "What's the title of the movie you would like to update?"
    title = gets.chomp.capitalize
    if movies[title.to_sym].nil?
      puts "The movie does not exist in your list"
    else
      puts "What's the new rating for #{title}?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The movie rating has been updated!"
    end
  break
  
	when "display"
    movies.each { |title, rating| puts "#{title}: #{rating}" } 
  break
  
  when "delete"
    puts "Which movie do you want to delete?"
    title = gets.chomp.capitalize
    if movies[title.to_sym] == nil
      puts "The movie does not exist in your list"
    else
      movies.delete(title)
      puts "The movie has been deleted!"
    end
  break  
  
  else
    puts "Your entry is incorrect, do you want to try again?"
    choice = gets.chomp
  break if choice == "no"
    
  end
  
end