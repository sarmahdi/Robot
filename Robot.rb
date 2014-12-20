#!/usr/bin/ruby
class Robot
#This is the model for the Robot. It will be initialized with couple of Parameters like name, x and y coordinates
#and which direction is it facing.
#author : Syed Mahdi
#Date : 20/12/2014


#This method is to initialize the robot with a name, if a name is not provided as an argument the Default name 'Robo' is taken
def initialize(name = "Robo", x, y, face, position)
    @name = name
	@x = x
	@y = y
	@face = face
	@position = position
	say_hi
end #end of initialize

#A post initialize method to see what is created
def say_hi
     puts "Hi I am #{@name}!"
	 puts "I am at #{@x} and #{@y} facing #{@face}"
end