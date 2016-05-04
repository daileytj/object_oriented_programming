# 1. Create a class called MyCar. When you initialize a new instance or object of the class, 
# allow the user to define some instance variables that tell us the year, color, and model of the car.
# Create an instance variable that is set to 0 during instantiation of the object to track the current
# speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.
 
# 2. Add an accessor method to your MyCar class to change and view the color of your car. 
# Then add an accessor method that allows you to view, but not modify, the year of your car.

# 3. You want to create a nice interface that allows you to accurately describe
# the action you want your program to perform. Create a method called spray_paint
# that can be called on an object and will modify the color of the car.

class MyCar

	attr_accessor :color
	attr_reader :year

	def initialize(year, color, model)
		@year = year
		@color = color
		@model = model
		@current_speed = 0
	end

	def speed_up(number)
		@current_speed+=number
		puts "You push the gas and accelerate #{number} mph."
	end

	def brake(number)
		@current_speed-=number
		puts "You push the brake and decelerate #{number} mph."
	end

	def shut_off_car
		@current_speed = 0
		puts "The car is now shut off"
	end

	def current_speed
		puts "You are now moving at #{@current_speed} mph."
	end

	def spray_paint(color)
		self.color = color
		puts "Your new #{color} paint job looks great!"
	end
end

jetta = MyCar.new(2008, "silver", "Jetta")
jetta.speed_up(40)
jetta.current_speed
jetta.brake(10)
jetta.current_speed
jetta.shut_off_car
jetta.current_speed
jetta.spray_paint("blue")

puts jetta.color
puts jetta.year