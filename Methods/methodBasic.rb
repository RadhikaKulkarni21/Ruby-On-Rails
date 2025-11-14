def greeting
  puts "hello!"
end

greeting

#parameterized
def cubertino(n)
  puts n ** 3
end

cubertino(8)

=begin
splat arguments. Splat arguments are arguments preceded by an asterisk *. 
This tells the program that the method can receive one or more arguments.  
=end

def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

#return keyword
def add(a,b)
  return a + b
end

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i*5 }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5 }


my_array = [1, 2, 3, 4, 5]

my_array.each{|i| puts i * i}


def welcome(name)
  return "Hello, #{name}"
end

welcome("Eric")

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
puts books.reverse!

fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! do |fruit1, fruit2|
  fruit1 <=> fruit2
end

fruits.reverse!