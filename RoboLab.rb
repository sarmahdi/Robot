class RoboLab
#This is the main executable class. 
#This is the Lab where a robot is created and an orientation is given to it
#author: Syed Mahdi

require Robot
require RobotOperations

def initialize(name)
@robot = Robot.new(name)
end

end #end of RoboLab