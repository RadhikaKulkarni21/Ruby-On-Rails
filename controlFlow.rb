#if-elsif

a = 10
b = 15

if a < b
  print "a is less than b!"
elsif a > b
  print "b is greater than a!"
else
  print "a is equal to b!"
end

=begin
Sometimes you want to use control flow to check if something is false, 
rather than if it’s true. You could reverse your if/else, 
but Ruby will do you one better: it will let you use an unless statement.
  The first condn is false
  and the 2nd one is true in this case
=end

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end


#And operator
# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true

#Or operator
# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false

#not operator
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false

#combining boolean operators
# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false