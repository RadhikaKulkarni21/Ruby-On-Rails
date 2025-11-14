=begin
gets lets the user input a line and returns it as a value to your program. 
This value includes the trailing line break. 
If you then call chomp on that value, this line break is cut off.

we don’t assign the result of capitalize to a variable. 
Instead you might notice the ! at the end of capitalize. 
This modifies the value contained within the variable answer itself.
=end

#program to print your name, lastname, place

print "What is your first name?"
first_name = gets.chomp
first_name.capitalize! #capitalizes first letter in string

print "What is your last name?"
last_name = gets.chomp
last_name.capitalize!

print "Which city are you from?"
city = gets.chomp
city.capitalize!

print "Where are you from? "
country = gets.chomp
country.upcase!

puts "Your name is #{first_name} #{last_name}. You are from #{city}, #{country}!"

#O/P: Your name is Minyoung Lee. You are from Seoul, SK