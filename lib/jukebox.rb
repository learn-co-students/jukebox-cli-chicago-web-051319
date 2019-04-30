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

def play(input)
  puts input
  #puts "#{input} is the input"
  a = ""
  ec = "Invalid input, please try again"
  
  if input.class == Integer && input <= songs.length
    a = songs[input]
  elsif input.class == String && songs.include?(input)
    a = songs[songs.index_of(input)]
  else
    a = ec
  end
  
  puts "Playing #{a}"
  #puts "#{a} is the output"
  return a
end

def list(col)
  puts col
end

def exit_jukebox
  puts "Goodbye"
end

def run(col)
  puts "Please enter a command:"
  a = ""
  
  while a != "exit"
    if a == "help"
      help
    elsif a == "play"
      puts "Enter Song name or track number:"
      play(b)
    elsif a == "list"
      list(col)  
    elsif a == "exit"
      a = "exit"
      exit_jukebox
    else
      puts "Invalid input, type 'help' for commands"
    end
  end
end

run(songs)