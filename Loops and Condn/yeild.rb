def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Zen") { |n| puts "My name is #{n}." }
yield_name("Ken") { |n| puts "My name is #{n}." }

=begin
You can also pass parameters to yield! Check out the example in the editor.

The yield_name method is defined with one parameter, name.
On line 9, we call the yield_name method and 
supply the argument "Eric" for the name parameter. 
Since yield_name has a yield statement, we will also need to supply a block.
Inside the method, on line 2, we first puts an introductory statement.
Then we yield to the block and pass in "Kim".
In the block, n is now equal to "Kim" and we puts out “My name is Kim.”
Back in the method, we puts out that we are in between the yields.
Then we yield to the block again. This time, we pass in "Eric" 
which we stored in the name parameter.
In the block, n is now equal to "Eric" and we puts out “My name is Eric.”
Finally, we puts out a closing statement.
=end

def double(number)
  yield(3)
end

double(5) {}
double(7) {}

def greeter
  yield
end

phrase = Proc.new{puts  "Hello there!"}

greeter(&phrase)


numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

puts strings_array

#check for integer and print only that
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = lambda {|x| x.is_a? Integer}

ints = odds_n_ends.select(&ints)

puts ints
