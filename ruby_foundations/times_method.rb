5.times do |num|
	puts num
end

# output:
# 0
# 1
# 2
# 3
# 4
# => 5

# duplicate the times method

# Integer#times method's first block argiment is 0, and the last block argument is 1 less than the calling object.
# Finally, the method returns the calling ibject, in this case, 5.

puts "--------------"

# Create a times method that has identical output as Integer#times

# times method implementation

def times(number)
	counter = 0
	while counter < number do
		yield(counter)
		counter += 1
	end

	number
end

# method invocation

times(5) do |num|
	puts num
end

# output:
# 0
# 1
# 2
# 3
# 4
# => 5



