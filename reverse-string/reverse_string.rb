# input = "AAbbCC"
# expected output = "CCbbAA"

str = "AAbbCC"
output = []

for x in 1..str.length do
	output << str[x*-1]
end

puts output.join
