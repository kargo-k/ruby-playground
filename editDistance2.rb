require 'pry'
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

    substrs = []
    for i in (0...shifted.length).to_a do
      t = tgt.dup
      sub = []
      shifted_sub = shifted[i..-1]
      for j in (0...shifted_sub.length).to_a do
        if t.include?(shifted_sub[j])
          sub << shifted_sub[j]
          t = t[t.index(shifted_sub[j])+1..-1]
        end
      end
      substrs << sub.length
    end

    distances << (tgt.length - substrs.max) * 2
  end

  distances.min
end


source = 'edeedeeq'
target = 'qdeeseeq'

editDistance(source,target)