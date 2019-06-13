
#in: 'aabccccccaaaa'
#out: 'a2b1c6a4'
require 'pry'

def char_compress(str)
    splits = []
    flag = 0
    while flag == 0
        for i in 0..str.length - 2
            if str[i] != str[i+1]
                splits << "#{str[0]}#{str[0..i].length}"
                str = str[i+1..-1]
                break
            end
            if i == str.length-2
                splits << "#{str[0]}#{str[0..-1].length}"
                flag = 1
            end
        end
    end
    splits.join
end

str = "aabccccccaaaa"
output = char_compress(str)
binding.pry
0