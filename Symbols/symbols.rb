=begin
The .object_id method gets the ID of an object—it’s how Ruby knows 
whether two objects are the exact same object.
Run the code in the editor to see that the two "strings" 
are actually different objects,
 whereas the :symbol is the same object listed twice. 
=end


puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

#Converting Between Symbols and Strings
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |s|
  symbols.push(s.to_sym)
end
print symbols

=begin
Besides using .to_sym, you can also use .intern. 
This will internalize the string into a symbol and works just like 
=end
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |s|
  symbols.push(s.intern)
end
print symbols

#Becoming More 
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select {|name, rating| rating > 3}


#only keys
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select_key {|name| puts name}
good_movies = movie_ratings.select_value {|rate| puts rate}