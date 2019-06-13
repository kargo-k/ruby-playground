
#in: 'aabccccccaaaa'
#out: 'a2b1c6a4'
require 'pry'

##a better solution than what I submitted the first time
def char_compress2(str)
    str = str.split(//)
    output = ""
    j = 0
    str.each_with_index do |l, i|
        if l != str[i+1]
            output += "#{l}#{i+1-j}"
            j += i+1-j
        end
    end
    output
end

str = "aabccccccaaaa"
output2 = char_compress2(str)
binding.pry
0