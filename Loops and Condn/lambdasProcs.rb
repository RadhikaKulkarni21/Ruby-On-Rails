=begin
A block is just a bit of code between do..end or {}. 
It’s not an object on its own, but it can be passed to 
methods like .each or .select.

A proc is a saved block we can use over and over.

A lambda is just like a proc, only it cares about the 
number of arguments it gets and it returns to 
its calling method rather than returning immediately.
=end

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda


#procs
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new{|x| x < 100}

youngsters = ages.select(&under_100)

puts youngsters