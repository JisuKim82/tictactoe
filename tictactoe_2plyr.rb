#Tic Tac Toe 2 Players

def print_grid(grid)
  puts "#{grid[0]}" +"  |  " + "#{grid[1]}" + "  |  " + "#{grid[2]}"
  puts "______________"
  puts "#{grid[3]}" +"  |  " + "#{grid[4]}" + "  |  " + "#{grid[5]}"
  puts "______________"
  puts "#{grid[6]}" +"  |  " + "#{grid[7]}" + "  |  " + "#{grid[8]}"
end

def check_winner?(grid)
 if (grid[0]!=' ' && ((grid[0]==grid[1]) && (grid[1]==grid[2])))
    true
 elsif (grid[0]!=' ' && ((grid[0]==grid[4]) && (grid[4]==grid[8])))
    true
 elsif (grid[0]!=' ' && ((grid[0]==grid[3]) && (grid[3]==grid[6])))
    true
 elsif (grid[3]!=' ' && ((grid[3]==grid[4]) && (grid[4]==grid[5])))
    true
 elsif (grid[6]!=' ' && ((grid[6]==grid[7]) && (grid[7]==grid[8])))
    true
 elsif (grid[1]!=' ' && ((grid[1]==grid[4]) && (grid[4]==grid[7])))
    true
 elsif (grid[2]!=' ' && ((grid[2]==grid[5]) && (grid[5]==grid[8])))
    true
 elsif (grid[2]!=' ' && ((grid[2]==grid[4]) && (grid[4]==grid[6])))
    true 
 else
    false
 end
end

grid = []
counter=9 #when counter reaches 0 it is a tie

0.upto(8) {|x| grid[x] = x} #show initial grid with location values
print_grid(grid)

0.upto(8) {|x| grid[x] = ' '} #re-assign each slot to a black space
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
