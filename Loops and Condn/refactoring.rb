puts "Hello there!"
greeting = gets.chomp

case greeting
 when "English" then puts "Hello!"
 when "French" then puts "Bonjour!"
 when "German" then puts "Guten Tag!"
 when "Finnish" then puts "Haloo!"
 else puts "I don't know that language!"
end

#conditional assignment
favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book

#implicit return - without return statement it will still return
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end

=begin
Ruby doesn’t look at both expressions unless it has to; if it sees
it stops reading as soon as it sees && because it knows 
false && anything must be false.
=end
def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

#If we want to do something a specific number of times, 
#we can use the .times method, like so:
5.times { puts "Odelay!" }
# Prints 5 "Odelay!"s on separate lines

#If we want to repeat an action for every element in a collection, 
#we can use .each:
[1, 2, 3].each { |x| puts x * 10 }
# Prints 10, 20, 30 on separate lines
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |num| puts num unless num % 2 != 0 }

#Instead of typing out the .push method name, you can simply use <<,
#the concatenation operator (also known as “the shovel”) to add 
#an element to the end of an array
alphabet = ["a", "b", "c"] << "d"
#alphabet.push("d")
caption = "A giraffe surrounded by " << "weezards!"
#caption += "weezards!"


#String interpolation
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end