[ 1, 2, 3 ].each { |num| "do nothing" }

# => [ 1, 2, 3 ]

[ 1, 2, 3 ].each { |num| "do nothing" }.select { |num| num.odd? }

# => [ 1, 3 ]

# write an each method that exhibits the same behaviors as Array#each

# method implementation

def each(array)
	counter = 0

	while counter < array.size
		yield (array[counter])
		counter += 1
	end

	array
end

# method invocation

each( [ 1, 2, 3, 4, 5 ] ) do |num|
	puts num
end

# output:
# 1
# 2
# 3
# 4
# 5
# => [ 1, 2, 3, 4, 5 ]