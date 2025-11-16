fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# The collect method takes a block 
#and applies the expression in the block to every element in an array. 

doubled_fibs = fibs.collect {|num| num * 2}
puts doubled_fibs

# methods that accept blocks have a way of transferring control 
# from the calling method to the block and back again. 
# We can build this into the methods we define by using the yield keyword.
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

#pass the proc to a method that would otherwise take a block,
# and we don’t have to rewrite the block over and over!
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
round_down = Proc.new{|x| x.floor}

ints = floats.collect(&round_down)
print ints