def pallindrome_karen?(word)
    half = word[0..word.length/2-1]
    half2 = word[word.length/2+1..-1]
    rev = ""
    for i in 1..half2.length
        rev << half2[i*-1]
    end
    if half == rev
        return true
    else
        return false
    end
end

def pallindrome_karen2?(word)
    for i in 1..word.length/2
        if word[i-1] != word[-1*i]
            flag = false
            break
        else
            flag = true
        end
    end
    flag
end


    # for i in 1..word.length/2 do
    #     if word[i-1] != word[-1*i]
    #         return false
    #         break
    #     else
    #         true
    #     end
    # end
