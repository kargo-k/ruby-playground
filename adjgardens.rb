# @param {Integer} n
# @param {Integer[][]} paths
# @return {Integer[]}
require 'pry'

def garden_no_adj(n, paths)
  if n == 1
      return [1]
  elsif paths == []
      return Array.new(n,1)
  end
  
  h = {}
  
  paths.each_with_index do |path, i|
      x = path[0]
      y = path[1]
      if !h.key?(x)
        h[x] = []
      end
      if !h.key?(y)
        h[y] = []
      end
      h[x] << y
      h[y] << x
  end

  gardens = Array.new(n, 1)

  h.each do |k,v|
    flowers = []
    v.each do |x|
      flowers << gardens[x-1]
    end
    gardens[k-1] = ([1, 2, 3, 4] - flowers).sample
  end

  gardens

end

n = 5
paths = [[4,1],[4,2],[4,3],[2,5],[1,2],[1,5]]

ans = garden_no_adj(n, paths)
puts "#{ans}"