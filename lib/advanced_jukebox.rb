#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

 #my_songs = {
 #"Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
 #"LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
 #"Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
 #"Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
 #"Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
 #"Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
 #"Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
 #}
 

 my_songs = {
 "Go Go GO" => '</jukebox-cli/audio/Emerald-Park/01.mp3>',
 "LiberTeens" => '</jukebox-cli/audio/Emerald-Park/02.mp3>',
 "Hamburg" =>  '</jukebox-cli/audio/Emerald-Park/03.mp3>',
 "Guiding Light" => '</jukebox-cli/audio/Emerald-Park/04.mp3>',
 "Wolf" => '</jukebox-cli/audio/Emerald-Park/05.mp3>',
 "Blue" => '</jukebox-cli/audio/Emerald-Park/06.mp3>',
 "Graduation Failed" => '</jukebox-cli/audio/Emerald-Park/07.mp3>'
 }

def help
  #this method should be the same as in jukebox.rb
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
  
  arr = []
  my_songs.each do |key , link|
    puts key
    arr << key
  end
  
  return arr
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  
  puts "Input Song Name or Track Number"
  #puts "Track list: #{list(my_songs)}"
  inp = gets.chomp

  if my_songs.include?(inp)
    puts "Included!"
    puts "Opening #{inp}"
    #system "open #{my_songs[inp]}"
    #trouble opening the filehere
    puts "Please wait..."
  else
    puts "Invalid input, please try again"
    puts "#{inp} not found"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
  exit
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  puts "  ===== Main Menu ====="
  puts "Please enter a command"
  
  inp = gets.chomp
  while(inp != "exit")
    if inp == "play"
      play(my_songs)

    elsif inp == "help"
      help
    elsif inp == "list"
      list(my_songs)
    else
      puts "Invalid input, please try again"
    end
    
    puts ">> #{inp}"
    run(my_songs)
  end
  
  if inp == "exit"
    exit_jukebox
  end
  
end

run(my_songs)
