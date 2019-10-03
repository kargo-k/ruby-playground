require 'pry'
def editDistance(source, target)
  # alternate approach: tally the characters in each string and the shift the src to match the max num
  # chars in the tgt string ?

  # convert strings to arrays of ascii values
  target_ascii = target.split('').map{|c| c.sum}
  source_ascii = source.split('').map{|c| c.sum}
  # binding.pry
  
  # make target string into a hash and find the most frequent letter
  target_h = {}
  target.each_char{|c| target_h[c] = target.count(c)}
  target_max = target_h.max_by{|k,v| v}

  # make source string into a hash and find the most frequent letter
  source_h = {}
  source.each_char{|c| source_h[c] = source.count(c)}
  source_max = source_h.max_by{|k,v| v}

  # calculate the shift distance between the most frequent target letter and most frequent source letter
  shift = target_max[0].sum - source_max[0].sum
  
  # shift the source ascii by the shift amount
  shifted_source_ascii = source_ascii.map{|x| x + shift}

  # isolate elements that are different
  dif = target_ascii.collect.with_index{|t,i| t - shifted_source_ascii[i]}
  binding.pry
  # dif = target_ascii - shifted_source_ascii
  ans = dif.length * 2
  puts ans
end


source = 'wwwev'
target = 'sshhh'

editDistance(source,target)