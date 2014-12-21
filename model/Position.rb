#!/usr/bin/ruby
class Position
#This class describes a Position. A position is defined as an X coordinate, a Y coordinate and a direction 
#the positionable object (like a Robot for example) is facing. (0,0) is the deepest South West corner on a
#grid of squares.
#Author : Syed Mahdi

attr_accessor :x
attr_accessor :y
attr_accessor :face

def initialize(x , y , face)
@x = x
@y = y
@face =face
end

end