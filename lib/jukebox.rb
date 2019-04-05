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
  help_string = %q(
    I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program
    )

  puts help_string
end

def list(songs)
  songs.each_with_index { | song, index | puts "#{index+1}. #{song}" }
end

def play(songs)
  invalid_input = "Invalid input, please try again"
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{songs[song_to_play.to_i - 1]}"
  elsif songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts invalid_input
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Welcome to Jukebox!"
  help
  command = ""
  while command
    puts "Please enter a command:"
    case command = gets.downcase.strip
    when 'help'
      help
    when 'list'
      list(songs)
    when 'play'
      play(songs)
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
