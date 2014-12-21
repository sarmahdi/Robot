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
		linesArray =  IO.readlines("robolife1.txt")
		firstLine =  linesArray[0]
		if !firstLine.start_with? 'PLACE'
			puts "The first command needs to be 'PLACE',the first command in #{@aName} does not start with PLACE"
		end
		tokens = RobotUtils.tokenize(firstLine)
		puts tokens
		if tokens[0] == "PLACE"
		#
		end
		position = new Position(tokens[1])
		
		puts linesArray
	end
   #robot = Robot.new()
  #script = ARGV.join( ' ' )
 # robotOperations.run( robot,script )
end

end #end of RoboLab