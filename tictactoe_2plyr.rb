#Tic Tac Toe 2 Players
require_relative 'methods.rb'

grid = []
counter=9 #when counter reaches 0 it is a tie

(0..8).each {|x| grid[x] = x} #show initial grid with location values
print_grid(grid)

(0..8).each {|x| grid[x] = ' '} #re-assign each slot to a black space
                              #keeps the alignment of the grid
game_over = false


until(game_over) do
  puts "Enter position for X (0-8: zero is top left and 8 is bottom right)"
  value = gets

  while(value.to_i>8 || value.to_i<0 || grid[value.to_i] != ' ')
    puts "Invalid Entry/Slot Taken"
    puts "Enter position for X (0-8: zero is top left and 8 is bottom right)"
    value = gets
    
  end
  
  grid[value.to_i]='X'
  counter-=1
  print_grid(grid)
  if check_winner?(grid)
    puts "Player X wins"
    break
  end

  if counter == 0
    puts "It's a Tie!"
    break
  end

  puts "Enter position for O (0-8: zero is top left and 8 is bottom right)"
  value = gets
  
  while(value.to_i>8 || value.to_i<0 || grid[value.to_i] != ' ')
    puts "Invalid Entry/Slot Taken"
    puts "Enter position for O (0-8: zero is top left and 8 is bottom right)"
    value = gets
  end
  
  grid[value.to_i]='O'
  counter-=1
  print_grid(grid)
  if check_winner?(grid)
    puts "Player O wins"
    break
  end
  
  if counter == 0
    puts "It's a Tie!"
    break
  end
 
end
