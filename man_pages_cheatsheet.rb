# For this assignment we would like you to create a cheat sheet for the man pages of a linux / unix machine.
#
# If you don't know what the man pages are they are like information manuals for command line programs installed on your computer. (https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/man.1.html (Links to an external site.))
#
# If you would like to play around with the man pages:
#
# open your terminal or iTerm2
# type in: man mv
# prints out the manual for move file
# type in: man cp
# prints out the manual for copying a file
# type in: man mkdir
# prints out the manual for making a new directory
#
#
# Now that you are somewhat familiar to the man pages we will write a ruby script to help us look up specific commands and search for commands to output man pages with.
#
#
#
# Man Page Cheat Sheet Basic Objectives:
#
# Create a ruby script
# print out a menu of at least command line and exit
# print out the command line options that you want man pages for: (mv, cp, mkdir, ls, rm)
# when a user makes a selection output the man page for that selection
# when a user chooses quit, exit the program

def cheatsheet
  puts "CHEATSHEET"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Quit"
  print "> "
  command = gets.strip.to_i
  case command
  when 1
    command_line
  when 2
    search
  when 3
    exit
  else
    puts "Error, please try again!"
    cheatsheet
  end
end

def command_line
  puts "Command Line"
  puts "1: manual for ls"
  puts "2: manual for mkdir"
  puts "3: manual for cd"
  puts "4: return to main menu"
  print "> "
  command = gets.strip.to_i
  case command
  when 1
    puts `man ls`
    cheatsheet
  when 2
    puts `man mkdir`
    cheatsheet
  when 3
    puts `man cd`
    cheatsheet
  when 4
    cheatsheet
  else
    puts "Error, please try again!"
    command_line
  end
end

def search
    puts "Search by command, 1 for main menu, or 2 to quit:"
    print "> "
    search_value = gets.strip
    case
    when search_value.to_i == 0
      puts `man #{search_value}`
      cheatsheet
    when search_value == "1"
      cheatsheet
    when search_value == "2"
      exit
    else
      puts "Error, please try again!"
      cheatsheet
    end
  end

cheatsheet
