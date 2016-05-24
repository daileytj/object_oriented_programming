# Question 1
# 
# You are given the following code:
# 
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end
# 
#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end
# What is the result of calling
# 
# oracle = Oracle.new
# oracle.predict_the_future

# The result will be "You will" + one of the 3 choices from the array in the choices method.

# Question 2
# 
# We have an Oracle class and a RoadTrip class that inherits from the Oracle class.
# 
# class Oracle
#   def predict_the_future
#     "You will " + choices.sample
#   end
# 
#   def choices
#     ["eat a nice lunch", "take a nap soon", "stay at work late"]
#   end
# end
# 
# class RoadTrip < Oracle
#   def choices
#     ["visit Vegas", "fly to Fiji", "romp in Rome"]
#   end
# end
# What is the result of the following:
# 
# trip = RoadTrip.new
# trip.predict_the_future

# The result will be "You will" + one of the 3 choices from the array in the choices method in the RoadTrip class
# as a result of the method choices being overwritten in the RoadTrip class.

# Question 3
# 
# How do you find where Ruby will look for a method when that method is called? How can you find an object's ancestors?
# 
# module Taste
#   def flavor(flavor)
#     puts "#{flavor}"
#   end
# end
# 
# class Orange
#   include Taste
# end
# 
# class HotSauce
#   include Taste
# end
# What is the lookup chain for Orange and HotSauce?
# 

# HotSauce.ancestors => [HotSauce, Taste, Object, Kernel, BasicObject]
# Orange.ancestors => [Orange, Taste, Object, Kernel, BasicObject]

# Question 4
# 
# What could you add to this class to simplify it and remove two methods from the class definition while still maintaining the same functionality?
# 
# class BeesWax
#   def initialize(type)
#     @type = type
#   end
# 
#   def type
#     @type
#   end
# 
#   def type=(t)
#     @type = t
#   end
# 
#   def describe_type
#     puts "I am a #{@type} of Bees Wax"
#   end
# end

# add attr_accessor :type

# Question 5
# 
# There are a number of variables listed below. What are the different types and how do you know which is which?
# 
# excited_dog = "excited dog"
# @excited_dog = "excited dog"
# @@excited_dog = "excited dog"

# local variable, instance variable, and class variable, respectively.
# local variables do not have a prefic, instance variables are prefixed with the @ symbol,
# and class variables are prefixed with @@.


# Question 6
# 
# If I have the following class:
# 
# class Television
#   def self.manufacturer
#     # method logic
#   end
# 
#   def model
#     # method logic
#   end
# end
# Which one of these is a class method (if any) and how do you know? How would you call a class method?

# The self.manufacturer method is a class method because it calls itself. 
# Class methods can be called by using the class name and then the method. ex) Television.manufacturer

# Question 7
# 
# If we have a class such as the one below:
# 
# class Cat
#   @@cats_count = 0
# 
#   def initialize(type)
#     @type = type
#     @age  = 0
#     @@cats_count += 1
#   end
# 
#   def self.cats_count
#     @@cats_count
#   end
# end
# Explain what the @@cats_count variable does and how it works. What code would you need to write to test your theory?

# @@cats_count variable keeps track of the number of objects created in the Cat class.
# It works by adding 1 to the count when a new Cat is initialized.
# We can test it by creating new Cats using Cat.new and calling Cat.cats_count  

# Question 8
# 
# If we have this class:
# 
# class Game
#   def play
#     "Start the game!"
#   end
# end
# And another class:
# 
# class Bingo
#   def rules_of_play
#     #rules of play
#   end
# end
# What can we add to the Bingo class to allow it to inherit the play method from the Game class?

# We can just have Bingo inherit from the Game class by using the following syntax:
# class Bingo < Game

# Question 9
# 
# If we have this class:
# 
# class Game
#   def play
#     "Start the game!"
#   end
# end
# 
# class Bingo < Game
#   def rules_of_play
#     #rules of play
#   end
# end
# What would happen if we added a play method to the Bingo class, keeping in mind that there is 
# already a method of this name in the Game class that the Bingo class inherits from.

# The play method in the Bingo class would be seen first and therefore called first.

# Question 10
# 
# What are the benefits of using Object Oriented Programming in Ruby? Think of as many as you can.
# 
# - Creating objects allow programmers to think more abstractly about the code they are writing.
# - Objects are represented by nouns so are easier to conceptualize.
# - It allows us to only expose functionality to the parts of code that need it, meaning namespace 
# issues are much harder to come across.
# - It allows us to easily give functionality to different parts of an application without duplication.
# - We can build applications faster as we can reuse pre-written code.
# - As the software becomes more complex this complexity can be more easily managed.
