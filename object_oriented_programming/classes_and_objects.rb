#  1. Given the below usage of the Person class, code the class definition.
puts "1."

class Person
	attr_accessor :name, :first_name, :last_name

	def initialize(name)
		@name = name
	end
end

bob = Person.new('bob')
puts bob.name                  # => 'bob'
bob.name = 'Robert'
puts bob.name                  # => 'Robert'

# 2. Modify the class definition from above to facilitate the following methods. Note that there is no name= setter method now.
puts "2."
 
class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parts = full_name.split
    @first_name = parts.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{first_name} #{last_name}".strip
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
# Hint: let first_name and last_name be "states" and create an instance method called name that uses those states.

# 3. Now create a smart name= method that can take just a first name or a full name, and knows how to set the
# first_name and last_name appropriately.
puts "3."

class Person
  attr_accessor :first_name, :last_name

  def initialize(full_name)
    parse_full_name(full_name)
  end

  def name
    "#{first_name} #{last_name}".strip
  end

  def name=(full_name)
    parse_full_name(full_name)
  end

  private

  def parse_full_name(full_name)
    parts = full_name.split
    self.first_name = parts.first
    self.last_name = parts.size > 1 ? parts.last : ''
  end

  def to_s
    name
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
puts bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
bob.name = "John Adams"
puts bob.first_name            # => 'John'
puts bob.last_name             # => 'Adams'

# 4. Using the class definition from step #3, let's create a few more people -- that is, Person objects.
puts "4."

bob = Person.new('Robert Smith')
rob = Person.new('Robert Smith')

# If we're trying to determine whether the two objects contain the same name, how can we compare the two objects?

puts bob.name == rob.name ? "true" : "false"

# 5. A. Continuing with our Person class definition, what does the below print out?
puts "5."

bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# The person's name is: #<Person:0x007fe772958650>

# Let's add a to_s method to the class:

# class Person
#   # ... rest of class omitted for brevity
 
#   def to_s
#     name
#   end
# end

# B. Now, what does the below output?
 
bob = Person.new("Robert Smith")
puts "The person's name is: #{bob}"

# The person's name is: Robert Smith