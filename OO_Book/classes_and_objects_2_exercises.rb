# 1. Add a class method to our MyCar class that calculates the gas mileage of my car.

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

	def self.gas_mileage (gallons, miles)
		puts "#{miles / gallons} miles per gallon of gas."
	end

	def to_s
		"My car is a #{color}, #{year}, #{@model}!"
	end
end

# 2. Override the to_s method to create a user friendly print out of your object. ^

# 3. When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

#  we get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
#  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# Why do we get this error and how do we fix it.

# We get this error because attr_reader only creates a getter method. 
# When we try to reassign the name instance variable to "Bob", 
# we need a setter method called name=. We can get this by changing 
# attr_reader to attr_accessor or attr_writer if we don't intend to use the getter functionality.

