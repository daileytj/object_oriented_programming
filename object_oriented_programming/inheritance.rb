# 1. Given this class:

# class Dog
#   def speak
#     'bark!'
#   end
# 
#   def swim
#     'swimming!'
#   end
# end

# teddy = Dog.new
# puts teddy.speak           # => "bark!"
# puts teddy.swim           # => "swimming!"
# One problem is that we need to track of different breeds of dogs, since they have slightly different behaviors.
# For example, bulldogs can't swim, but all other dogs can.

# Create a sub-class from Dog called Bulldog overriding the swim method to return "can't swim!"

# class Bulldog < Dog
#   def swim
#     "Can't swim"
#   end
# end

# 2. Let's create a few more methods for our Dog class.

# class Dog
#   def speak
#     'bark!'
#   end
# 
#   def swim
#     'swimming!'
#   end
# 
#   def run
#     'running!'
#   end
# 
#   def jump
#     'jumping!'
#   end
# 
#   def fetch
#     'fetching!'
#   end
# end

# Create a new class called Cat, which can do everything a dog can, except swim or fetch.
# Assume the methods do the exact same thing. Hint: don't just copy and paste all methods
# in Dog into Cat; try to come up with some class hierarchy.

class Animal
  def speak
    'bark!'
  end

  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Cat < Animal
  def speak
    'meow!'
  end
end

class Dog < Animal
  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

# 3. Draw a class hierarchy diagram of the classes from step #2

#          Animal
#          |    |
#          |    |
#   Cat ---     --- Dog

# 4. What is the method lookup path and how is it important?

puts Cat.ancestors
puts Dog.ancestors