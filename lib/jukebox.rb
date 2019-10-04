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


def run 
  puts "Please enter a command:"
  first_command = gets.strip
  case first_command
    when 'help'
      puts help
    when 'list'
      puts list(songs)
    when 'play'
      puts play(songs)
    when 'exit'
      puts exit_jukebox
  end
end

run

