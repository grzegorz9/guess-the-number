$separator = "----------------\n"
def welcome
  puts "\n"
  puts "Welcome to Guess the Number!\n"
end

def main_screen
  puts $separator
  puts "-- 'play' to start a new game"
  puts "-- 'records' to display the players' with the highests results"
  puts "-- 'options' to tweak the game"
  puts "-- 'help' to display the manual"
  puts "-- 'quit' to close the game"
end

def process(cmnd)
  if cmnd == "play"
    puts "Started a new game"
    puts "Game Over"
  elsif cmnd == "records"
    puts "Display the records from a file"
  elsif cmnd == "options"
    puts "Display the options screen"
  elsif cmnd == "help"
    puts "Display the manual from the file"
  elsif cmnd == "quit"
    puts "Program Closed"
  else
    puts "Command not recognised. Please try again."
  end
end

def version_check(code_version, file)
  extracted_version = IO.read(file, 16)
  if extracted_version.integer? && extracted_version == code_version
    return true
  else
    return false
  end
end
  
def add_new_record(score)
  if highest.empty?
    for i in 0..9
      if highest[i] == ""
        break
      end
    end
    highest[i] = score
  elsif highest[9] < score
    highest[9] = score
    sort.highest
  end
end
  
def self.empty?
  check = true
  for s in 0..9
    while check == true
      if self[s] == ""
        check = true
      else
        check = false
        break
      end
    end
  end
  if check == true
    return true
  else
    return false
  end
end