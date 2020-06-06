def help
  puts "I accept the following commands:"
  puts  "- help : displays this help message"
  puts  "- list : displays a list of songs you can play"
  puts  "- play : lets you choose a song to play"
  puts  "- exit : exits this program"
end 

def list(songs)
  songs_arr = songs 
  
  songs_arr.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
    puts "Please enter a song name or number:"
    user_input = gets.strip
    songs_arr = songs
    mutate_songs =[]
    
    songs_arr.each_with_index do |song, index|
    mutate_songs << {:number => index + 1, :song => song}
    end 
  
   counter = 0
    while counter < mutate_songs.length 
       if mutate_songs[counter][:song] == user_input || mutate_songs[counter][:number] == user_input.to_i
         puts "Playing #{mutate_songs[counter][:song]}"
         break
<<<<<<< HEAD
       elsif user_input != mutate_songs[counter][:song] || user_input != mutate_songs[counter][:number]
          puts "Invalid input, please try again"
=======
       elsif mutate_songs[counter][:song] != user_input
          puts "Invalid input, please try again"
          play(songs)
>>>>>>> e2c3a91dbbbd86ffa535b69bc87139ced30037f4
          break
       end
      counter += 1
    end
<<<<<<< HEAD
end

def run(songs) 

 while true do
  puts "Please enter a command:"
  command_input = gets.strip
    case command_input
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end
  

=======
    break
end

>>>>>>> e2c3a91dbbbd86ffa535b69bc87139ced30037f4
def exit_jukebox
  puts "Goodbye"
end

