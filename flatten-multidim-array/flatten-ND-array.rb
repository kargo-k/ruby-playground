require 'pry'
a = [2,[3,4],[3,[4,[5,[]]]]]
# output = a.join.split(//)

output = []
while !a.empty?
    x = a.shift
    if x.class != Array
        output << x
        a
    else
        for i in 0..x.length-1
            a.insert(i,x[i])
        end
        a
    end
end
output




binding.pry
0