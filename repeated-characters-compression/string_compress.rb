#in: 'aabccccccaaaa'
#out: 'a2b1c6a4'
require 'pry'

## improving my solution
def char_compress2(str)
    str = str.split(//)
    output = ""
    j = 0
    str.each_with_index do |l, i|
        if l != str[i+1]
            output += "#{l}#{i+1-j}"
            j = str[0..i].length
        end
    end
    output
end

## from stack overflow, user Eric Duminil
def compress(str)
    output = str.chars.chunk{|x| x}.map do |x, xx| 
        xx.size > 1 ? "#{x}#{xx.size}" : x
    end
    output.join
end

str = "aabccccccaaaa"
output2 = char_compress2(str)
output3 = compress(str)
0