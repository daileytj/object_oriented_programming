# 1. Create a superclass called Vehicle for your MyCar class to inherit from and move the 
# behavior that isn't specific to the MyCar class to the superclass. Create a constant in 
# your MyCar class that stores information about the vehicle that makes it different from other types of Vehicles.
module Towable
	def can_tow?(pounds)
		pounds < 2000 ? true : false
	end
end

class Vehicle

	attr_accessor :color
	attr_reader :year
	@@vehicle_count = 0

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
		@@vehicle_count += 1
	end

	def self.number_of_vehicles
		puts "There are #{@@vehicle_count} vehicles"
	end
	
	def self.gas_mileage (gallons, miles)
		puts "#{miles / gallons} miles per gallon of gas."
	end

	def speed_up(number)
		@current_speed += number
		puts "You push the gas and accelerate #{number} mph."
	end

	def brake(number)
		@current_speed -= number
		puts "You push the brake and decelerate #{number} mph."
	end

	def current_speed
		puts "You are now moving at #{@current_speed} mph."
	end

	def shut_off_vehicle
		@current_speed = 0
		puts "The vehicle is now shut off"
	end

	def spray_paint(color)
		self.color = color
		puts "Your new #{color} paint job looks great!"
	end

	def age
		"Your #{@model} is #{years_old} years old."
	end

	private

	def years_old
		Time.now.year - self.year
	end
end

class MyCar < Vehicle
	NUMBER_OF_DOORS = 4 
end

class MyTruck < Vehicle
	include Towable
	NUMBER_OF_DOORS = 2 
end


# Then create a new class called MyTruck that inherits from your superclass that also has
#  a constant defined that separates it from the MyCar class in some way.

# 2. Add a class variable to your superclass that can keep track of the number of objects
# created that inherit from the superclass. Create a method to print out the value of this class variable as well.
 
# 3. Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.
 
# 4. Print to the screen your method lookup for the classes that you have created.

puts "------MyCar ancestors------"
puts MyCar.ancestors
puts "------MyTruck ancestors------"
puts MyTruck.ancestors
puts "------Vehicle ancestors------"
puts Vehicle.ancestors

 
# 5. Move all of the methods from the MyCar class that also pertain to the MyTruck class 
# into the Vehicle class. Make sure that all of your previous method calls are working when you are finished.
 
# method tests

blue_honda_car = MyCar.new(2008, "Blue", "Honda")
red_chevy_truck = MyTruck.new(2004, "Red", "Chevy")

blue_honda_car.speed_up(40)
red_chevy_truck.speed_up(30)
blue_honda_car.current_speed
red_chevy_truck.current_speed
puts blue_honda_car.color
puts red_chevy_truck.color
MyCar.gas_mileage(10,300)
Vehicle.number_of_vehicles


# 6. Write a method called age that calls a private method to calculate the age of the vehicle.
# Make sure the private method is not available from outside of the class. You'll need to 
# use Ruby's built-in Time class to help.

puts blue_honda_car.age
puts red_chevy_truck.age
 
# 7. Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, 
# so joe.grade will raise an error. Create a better_grade_than? method, that you can call like so...
 
# puts "Well done!" if joe.better_grade_than?(bob)

class Student
	def initialize(name, grade)
		@name = name
		@grade = grade
	end

	def better_grade_than?(other_student)
		grade > other_student.grade
	end

	protected

	def grade
		@grade
	end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)

# 8. Given the following code...
 
# bob = Person.new
# bob.hi
# And the corresponding error message...
 
# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# What is the problem and how would you go about fixing it?

# The problem is that the method hi is a private method, therefore it is unavailable to the object.
# I would fix this problem by moving the hi method above the private reserved word in the class.