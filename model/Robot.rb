#!/usr/bin/ruby
class Robot
#This is the model for the Robot. It will be initialized with couple of Parameters like name, x and y coordinates
#and which direction is it facing.
#author : Syed Mahdi
#Date : 20/12/2014

#require_relative 'model/position'
require_relative '../service/robotOperations'

#We want these variables to be accessed from outside.
attr_accessor :name
attr_accessor :x
attr_accessor :y
attr_accessor :face


#This method is to initialize the robot with a name, if a name is not provided as an argument the Default name 'Robo' is taken
def initialize(name = "Robo", position)
    @name = name
	@x = position.x
	@y = position.y
	@face = position.face
	@position = position
	say_hi
end #end of initialize

#A post initialize method to see what is created
def say_hi
     puts "Hi I am #{@name}!"
	 puts "I am at #{@x} and #{@y} facing #{@face}"
end

def run(commands)
	commands.each do |command|
		puts "..... in Run of Robot... with command #{command}"
		commandString = command.to_s.strip
		
		move = String.new("MOVE")
		report = String.new("REPORT")
		if commandString == move
			#to move...
			RobotOperations.move(self)
		end
		case commandString
		when "MOVE"
		RobotOperations.move(self)
		when "LEFT"
		RobotOperations.left(self)
		when "RIGHT"
		RobotOperations.right(self)
		when "REPORT"
		RobotOperations.report(self)
		end
	end
	
end


end #end of Robot