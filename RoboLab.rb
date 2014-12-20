class RoboLab
#This is the main executable class. 
#This is the Lab where a robot is created and an orientation is given to it
#author: Syed Mahdi

require_relative "model/robot"
require_relative "service/robotOperations"

def initialize(name)
@robot = Robot.new(name)
end


# Script to invoke Robot using command-line args
def help
  print " 
  You must pass in the path to the file to launch.

  Usage: #{__FILE__} target_file
" 
end

unless ARGV.size > 0
  help
  exit
else
  

  robot = Robot.new(  )
  script = ARGV.join( ' ' )
  robotOperations.run( robot,script )
end


end #end of RoboLab