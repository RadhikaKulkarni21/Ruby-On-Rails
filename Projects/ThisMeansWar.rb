#Thith Meanth War!
print "Pleathe enter a thtring: " 
user_input = gets.chomp
user_input.downcase!

if user_input.include?"c"
  user_input.gsub!(/c/, "th")
  print user_input
else
  print "Nothing to change here!"
end

puts "Your string is #{user_input}"