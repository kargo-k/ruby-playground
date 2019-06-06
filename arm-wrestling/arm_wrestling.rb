# //Given the lifting strength of the arms of two people.
# //Determine the results of a arm wrestling match between the two
# //[leftArm,rightArm]
playerOne = [10,13]
playerTwo = [11,9]

def wrestle(playerOne_a, playerTwo_a)
	for i in 0..1
		arms = ["Left Arm", "Right Arm"]
		case playerOne_a[i] <=> playerTwo_a[i]
		when -1
			puts "#{arms[i]} winner, playerTwo"
		when 0
			puts "#{arms[i]} tie"
		when 1
			puts "#{arms[i]} winner, playerOne"
		end
	end
end

wrestle(playerOne, playerTwo)
wrestle([11,10],[11,9])

# //in: playerOne,PlayerTwo
# //out: Left Arm winner, playerTwo
# //     Right Arm winner, playerOne

# //in: [11,10], [11,9]
# //out: Left arm tie 
# //     Right arm winner, playerOne