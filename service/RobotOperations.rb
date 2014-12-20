class RobotOperations
#This is a service class where all the service/operations methods are defined. 
#It is like a utility class where each method takes at least a Robot object 
#and performs a function on it.


#This method places the robot at a specified spot in the grid, denoted by the argument placement
def place(robot, placement)
	if placement.x !<5  [then]
		puts 'The Robot #{'robot.name'} could not be created , you need to modify the X for the initial placement to be less than 5'
	elsif placement.y !<5 [then]
		puts 'The Robot #{'robot.name'} could not be created , you need to modify the Y for the initial placement to be less than 5'
	else
		robot.x = placement.x
		robot.y = placement.y
		robot.face = placement.face
		report(robot)
	 end# end of if
end #end of method place

# This method moves the robot one step ahead in the direction it is facing.
#It checks if the relative coordinate is more than 4 or zero (depending where it is facing) 
#and informs the operator if the robot is going to fall
def move(robot)
	if robot.face == 'NORTH'
		if robot.y+1 > 4
		puts "#{'robot.name'} is going to fall down"
		else
		robot.y = robot.y+1
		end
	end
	if robot.face == 'South'
		if robot.y-1 < 0
			puts "#{'robot.name'} is going to fall down"
		else
			robot.y = robot.y-1
		end
	end
	
	if robot.face == 'East'
		if robot.x+1 > 4
			puts "#{'robot.name'} is going to fall down"
		else
			robot.x = robot.x+1
		end
	end
	
	if robot.face == 'West'
		if robot.x-1 < 0
			puts "#{'robot.name'} is going to fall down"
		else
			robot.x = robot.x+1
		end
	end




end #end of move

#This method reports the current location of the robot as well as the present direction 
#it is facing
#
def report(robot)
puts "#{'robot.name'} is currently placed at spaces #{'robot.x'} and #{'robot.y'} facing #{'robot.face'}"
end# end of report
end #end of Class
