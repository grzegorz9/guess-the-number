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
  
  def add_new_record
    if highest.empty?
      for i in 0..9
        if highest(i) == ""
          break
        end
        highest(i) = score
      end
    elsif highest(9) < score
      highest(9) = score
      sort.highest
    end
  end
  
  def self.empty?
    check = true
    while check = true
      for s in 0..9
        if self[s] == ""
          check = true
        else
          check = false
          break
        end
      end
    end
    if check = true
      return true
    else
      return false
    end
  end

end