#Tic Tac Toe 2 Players
require_relative 'methods.rb'

grid = []
counter=9 #when counter reaches 0 it is a tie

(0..8).each {|x| grid[x] = ' '} #re-assign each slot to a black space
                              #keeps the alignment of the grid
print_grid(grid)

game_over = false
player = 'X'

until(game_over) do
  puts "Enter position for #{player} (0-8: zero is top left and 8 is bottom right)"
  value = gets

  while(value.to_i>8 || value.to_i<0 || grid[value.to_i] != ' ')
    puts "Invalid Entry/Slot Taken"
    print_grid(grid)
    puts "Enter position for #{player} (0-8: zero is top left and 8 is bottom right)"
    value = gets 
  end
  
  grid[value.to_i]="#{player}"
  counter-=1
  print_grid(grid)
  if check_winner?(grid)
    puts "Player #{player} wins"
    game_over = true
  end

  if counter == 0
    puts "It's a Tie!"
    game_over = true
  end
  
  #Switch player
  player=='X' ? player='O': player='X'   
end
