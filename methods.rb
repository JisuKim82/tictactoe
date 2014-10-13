def print_grid(grid)
  puts "MAP OPTIONS:" + "\t\t" + "CURRENT BOARD:"
  puts "0" +"  |  " + "1" + "  |  " + "2" + "\t\t" + "#{grid[0]}" + "  |  " + "#{grid[1]}" + "  |  " + "#{grid[2]}"
  puts "______________" + "\t\t" + "______________"
  puts "3" +"  |  " + "4" + "  |  " + "5" + "\t\t" + "#{grid[3]}" + "  |  " + "#{grid[4]}" + "  |  " + "#{grid[5]}"
  puts  "______________" + "\t\t" + "______________"
  puts "6" +"  |  " + "7" + "  |  " + "8" + "\t\t" + "#{grid[6]}" + "  |  " + "#{grid[7]}" + "  |  " + "#{grid[8]}"
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