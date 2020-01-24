

def help
    puts "I accept the following commands:"
    puts " - help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do | song, idx |
    puts "#{idx + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_request = gets.strip
  included = false
  songs.each_with_index do | song, idx |
    if song_request.to_i - 1 == idx 
      puts "Playing #{songs[idx]}"
      included = true
    elsif song_request == song
      puts "#{songs[idx]}"
      included = true
    end
  end
  if included == false 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox 
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  command = gets.strip
  if command != 'exit'
    if command == 'list'
      list(songs)
    elsif command 
      
     end
  end
end

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]