require 'pry' 
# @param {Integer[][]} grid
# @return {Integer}

# 0 = empty
# 1 = fresh
# 2 = rotten

# each minute, adjacent fresh/rotten becomes rotten.

# ==> min number of minutes so that there are no fresh oranges. if impossible, return -1
def oranges_rotting(grid)
  r = grid.length
  c = grid[0].length
  fresh = []
  rotten = []

  for i in (0...r).to_a
    for j in (0...c).to_a
      case grid[i][j]
      when 1
        fresh << [i, j]
      when 2
        rotten << [i, j]
      end
    end
  end

  if fresh.length == 0
    return 0
  elsif rotten.length == 0
    return -1
  end

  min = 0
  flag = true

  while flag
    indexes = []

    fresh.each_with_index do |orange, i|
      r = orange[0]
      c = orange[1]

      if rotten.include?([r, c-1]) || rotten.include?([r,c+1]) || rotten.include?([r-1,c]) || rotten.include?([r+1,c])
        indexes.unshift(i)
      end
    end

    if indexes.length == 0
      flag = false
    else
      min += 1

      indexes.each do |i| 
        rotten << fresh[i]
        fresh.delete_at(i)
      end
    end

  end

  if fresh.length > 0
    return -1
  else
    return min
  end

end

input1 = [[2,1,1],[1,1,0],[0,1,1]]
output1 = 4
myoutput1 = oranges_rotting(input1)
puts "output 1: #{myoutput1}...real answer #{output1}"

input2 = [[2,1,1],[0,1,1],[1,0,1]]
output2 = -1
myoutput2 = oranges_rotting(input2)
puts "output 2: #{myoutput2}...real answer #{output2}"

input3 = [[0,2]]
output3 = 0 #no fresh oranges to start with ... or no rotten oranges to start with
myoutput3 = oranges_rotting(input3)
puts "output 3: #{myoutput3}...real answer #{output3}"