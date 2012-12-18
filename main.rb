class Main
  def welcome
    puts "----------\nWelcome to the Number Guessing Game!\n----------"
  end
  
  def main_screen
    puts "Here's what you can do:\n"
    puts "-- 'game' to start a new game"
    puts "-- 'records' to display the players' with the highests results"
    puts "-- 'options' to tweak the game"
    puts "-- 'help' to display the manual"
    puts "-- 'quit' to close the game"  
  end

  def process(cmnd)
    if cmnd = "game"
      puts "Started a new game"
    elsif cmnd = "records"
      puts "Display the records from a file"
    elsif cmnd = "options"
      puts "Display the options screen"
    elsif cmnd = "help"
      puts "Display the manual from the file"
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
  
  def records
    
  end
end