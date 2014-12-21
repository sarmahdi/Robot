class RoboLab
#This is the main executable class. 
#This is the Lab where a robot is created and an orientation is given to it
#author : Syed Mahdi
#Date : 20/12/2014

require_relative "service/robotUtils"
require_relative "model/robot"
require_relative "model/position"
require_relative "service/robotOperations"

#def initialize()
#@robot = Robot.new(name)
#end


# Script to invoke Robot using command-line args
def help
  puts " 
  You must pass in the path to the file to launch.

  Usage: #{__FILE__} target_file
" 
end

unless ARGV.size > 0
 roboLab =  RoboLab.new
 roboLab.help
 exit
else
	puts "#{ARGV}"
	@aName = ARGV[0]
	puts @aName
	scriptFile =  File.new(@aName,"r")
	
	if scriptFile
		linesofCommandsArray =  IO.readlines(@aName)
		puts linesofCommandsArray
		firstCommand =  linesofCommandsArray[0]
		#The first command in the script has to be PLACE so that a robot can be created
		#and placed on a location specified by the coordinates and face given after
		#PLACE command, PLACE has no other meaning besides creating a Robot on its location.
		if !firstCommand.start_with? 'PLACE'
			puts "The first command needs to be 'PLACE',the first command in #{@aName} does not start with PLACE"
			exit
		end
		firstCommand = RobotUtils.tokenize(firstCommand," ")
		puts firstCommand
		
		if firstCommand[0] == "PLACE"
		#
		positionTokens = RobotUtils.tokenize(firstCommand[1], ",")
		position = Position.new(positionTokens[0], positionTokens[1], positionTokens[2])
		robot = Robot.new(position)
		robotCommands = linesofCommandsArray.drop(1)
		puts robotCommands
		robot.run(robotCommands)
		end
		 
		
		
		#robotOperations.run( robot,script )
	end
   #robot = Robot.new()
  #script = ARGV.join( ' ' )
 # robotOperations.run( robot,script )
end

end #end of RoboLab