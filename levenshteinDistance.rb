def levenshteinDistance(source, target)
  
  # initializing the matrix
  n = source.length
  m = target.length

  matrix = Array.new(m + 1){Array.new(n + 1,0)}

  for r in (0..m).to_a
    matrix[r][0] = r
  end
  for c in (0..n).to_a
    matrix[0][c] = c
  end

  # start iterating over the matrix, down each column
  for r in (1..m).to_a
    for c in (1..n).to_a
      # calculates the cost between the two characters
      if source[c-1] == target[r-1]
        cost = 0
      else 
        cost = 2 # would this be 2 for the code challenge?
      end
      # takes the minimum of the calculated values and saves it to the matrix
      matrix[r][c] = [ matrix[r-1][c] + 1, matrix[r][c-1] + 1, matrix[r-1][ c-1] + cost].min
    end
  end

  # return the bottom right value, which is the distance between the two strings
  matrix[-1][-1]
end

def editDistance(source, target)
  # brute force approach: iterate through all of the shifts and count the distance between src and tgt then take the min of the distances
  distances = []
  # convert strings to arrays of ascii values
  tgt = target.split('').map{|c| c.sum}
  src = source.split('').map{|c| c.sum}
  
  # shift the source by one
  for i in (0...26).to_a do
    shifted = src.map do |x|
      if (x + i) > 122
        # if the shifted letter is greater than 'z', move it back to 'a'
        x = (x + i) - 26
      else
        x += i
      end
    end
    
    # collect the LD between the shifted string and the target
    distances << levenshteinDistance(shifted.join, target)

  end

  distances.min
end

source = 'edeedeeq'
target = 'qdeeseeq'

ans = editDistance(source,target)
puts ans