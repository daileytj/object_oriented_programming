# Question 1
# 
# If we have this code:
# 
 class Greeting
   def greet(message)
     puts message
   end
 end
 
 class Hello < Greeting
   def hi
     greet("Hello")
   end
 end
 
 class Goodbye < Greeting
   def bye
     greet("Goodbye")
   end
 end
# What happens in each of the following cases:
# 
# case 1:
# 
# hello = Hello.new
# hello.hi

# prints "Hello"
 
# case 2:
# 
# hello = Hello.new
# hello.bye

# undefined method error
 
# case 3:
# 
# hello = Hello.new
# hello.greet

# Wrong number of arguments error 

# case 4:
# 
# hello = Hello.new
# hello.greet("Goodbye")

# prints "Goodbye" 

# case 5:
# Hello.hi

# Undefined method hi error, this happens because a Hello object is never initialized 

# Question 2
# 
# In the last question we had the following classes:
# 
# class Greeting
#   def greet(message)
#     puts message
#   end
# end
# 
# class Hello < Greeting
#   def hi
#     greet("Hello")
#   end
# end
# 
# class Goodbye < Greeting
#   def bye
#     greet("Goodbye")
#   end
# end
# If we call Hello.hi we get an error message. How would you fix this?

# we could rewrite the Hello class as such:
# class Hello
#   def self.hi
#     greeting = Greeting.new
#     greeting.greet("Hello")
#   end
# end
# 
# or initialize a new instance of the Hello class and then call the original hi method. 

# Question 3
# 
# When objects are created they are a separate realization of a particular class.
# 
# Given the class below, how do we create two different instances of this class, both with separate names and ages?
# 
# class AngryCat
#   def initialize(age, name)
#     @age  = age
#     @name = name
#   end
# 
#   def age
#     puts @age
#   end
# 
#   def name
#     puts @name
#   end
# 
#   def hiss
#     puts "Hisssss!!!"
#   end
# end

# Simply create two new instances of the class by caling AngryCat.new with differing parameters:
# Ex)
# bob = AngryCat.new(5, "Bob")
# dave = AngryCat.new(7, "Dave")
 
# Question 4
# 
# Given the class below, if we created a new instance of the class and then called to_s on that 
# instance we would get something like "#<Cat:0x007ff39b356d30>"
# 
# class Cat
#   def initialize(type)
#     @type = type
#   end
# end
# How could we go about changing the to_s output on this method to look like this: 
# I am a tabby cat? (this is assuming that "tabby" is the type we passed in during initialization).

# We would have to rewrite the to_s class as such:

# def to_s
#  "I am a #{type} cat?" 
# end 

# Question 5
 
# If I have the following class:
 
# class Television
#   def self.manufacturer
#     # method logic
#   end
 
#   def model
#     # method logic
#   end
# end
# What would happen if I called the methods like shown below?
 
# tv = Television.new
# tv.manufacturer
# tv.model
 
# Television.manufacturer
# Television.model

# If you attempted to call tv.manufacturer you would get an error and it would look something like 
# this undefined method manufacturer for #<Television:XXXX>, this is because tv is an 
# instance of the class Television and manufacturer is a class method, meaning it can only 
# be called on the class itself (in this case Television).

# You would also get an error if you tried to call Television.model, the error would look something 
# like NoMethodError: undefined method 'model' for Television:Class. This is because this method only 
# exists on an instance of the class Television in this case tv.
 
# Question 6
# 
# If we have a class such as the one below:
# 
# class Cat
#   attr_accessor :type, :age
# 
#   def initialize(type)
#     @type = type
#     @age  = 0
#   end
# 
#   def make_one_year_older
#     self.age += 1
#   end
# end
# In the make_one_year_older method we have used self. What is another way we could write 
# this method so we don't have to use the self prefix.

# We can just reference the age using the instance variable for age, @age
# self and @ can be used interchangably 

# Question 7
# 
# What is used in this class but doesn't add any value?
# 
# class Light
#   attr_accessor :brightness, :color
# 
#   def initialize(brightness, color)
#     @brightness = brightness
#     @color = color
#   end
# 
#   def self.information
#     return "I want to turn on the light with a brightness level of super high and a colour of green"
#   end
# 
# end

# The return is useless in the information class instance method since Ruby will return the last line of code
# on its own without the return prompt.
# The attr_accessor for :brightness and :color are also useless, 
# unless later one plans to be able to alter these values later.
