require_relative 'main'


module Game
  welcome
  main_screen
  puts $separator
  puts "What do you want to do?\n"
  command = gets.chomp()
  process(command)
  while command != "quit"
    puts $separator
    puts "What do you want to do?\n"
    command = gets.chomp()
    process(command)
  end
end