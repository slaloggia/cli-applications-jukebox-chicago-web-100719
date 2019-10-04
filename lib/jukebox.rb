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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {
    |item, index| 
    puts "#{index + 1}. #{item}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.strip
  if songs.include?(user_response) 
    puts "Playing #{user_response}"
  elsif user_response.to_i > 0 && user_response.to_i <= songs.length
    puts "Playing #{songs[user_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end


def run(songs) 
  user_command = nil
  until user_command == 'exit'
    puts "Please enter a command:"
    user_command = gets.strip
  case user_command
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'exit'
      exit_jukebox
    end
  end
end
