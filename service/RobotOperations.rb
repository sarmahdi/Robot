module RobotOperations
#This is a service class where all the service/operations methods are defined. 
#It is like a utility class where each method takes at least a Robot object 
#and performs a function on it.
#author : Syed Mahdi
#Date : 20/12/2014

#This method places the robot at a specified spot in the grid, denoted by the argument placement
def RobotOperations.place(robot, placement)
	if !placement.x <=4  
		puts 'The Robot #{robot.name} could not be created , you need to modify the X for the initial placement to be less than 5'
	elsif !placement.y <=4 
		puts 'The Robot #{robot.name} could not be created , you need to modify the Y for the initial placement to be less than 5'
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
def RobotOperations.move(robot)
puts "In move with #{robot.name}"
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

def RobotOperations.left(robot)
puts "#{'robot.name'} is currently placed at spaces #{'robot.x'} and #{'robot.y'} facing #{'robot.face'}"
end# end of report


def RobotOperations.right(robot)
puts "#{'robot.name'} is currently placed at spaces #{'robot.x'} and #{'robot.y'} facing #{'robot.face'}"
end# end of report

#This method reports the current location of the robot as well as the present direction 
#it is facing
#
def RobotOperations.report(robot)
puts "#{'robot.name'} is currently placed at spaces #{'robot.x'} and #{'robot.y'} facing #{'robot.face'}"
end# end of report

#This method makes the robot move or perform the functions as described in the script
def run(robot, script)

end#end of run
end #end of Class
