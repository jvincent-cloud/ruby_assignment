def one_way
  puts "kovalam."
  puts "mahabalipuram"

  short_distance = true

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "kovalam"
      dead("you are far away from chennai")
    elsif choice == "mahabalipuram" && short_distance
      dead("you are nearby to chennai.")
    else
       puts "I got no other options."
    end
  end
end

def two_way
  puts "Tindivanam"
  puts "Chengelpet"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "Tindivanam"
      dead("you are far away from chennai")
  elsif choice.include? "Chengelpet"
      dead("you are nearby to chennai.")
  else
    puts "I got no other options."
  end
end

def dead(okay)
  puts okay, "Good job!"
  exit(0)
end

def start
  puts "You are on the way to chennai."
  puts "Route-1, Route-2."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "route-1"
    one_way
  elsif choice == "route-2"
    two_way
  else
    dead("No other way!.")
  end
end
start
