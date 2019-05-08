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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list (songs)
  puts songs.each_with_index 
end

def play (songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  songs.each do |song_list|
  if song == song_list
    puts "Playing #{song}"
  elsif song == [1..9]
  puts "Playing#{songs[song - 1]}"
  else 
    puts "Invalid input, please try again"
  end

end 

def exit_jukebox
  puts "Goodbye"
end

def run (command)
  help
  puts "Please enter a command:"
  command = gets.chomp
case command 
    when "exit"
    exit_jukebox
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
end
end


