my_hash = { "name" => "Guma",
  "age" => 24,
  "ADC" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["ADC"]

#assigning value later
pets = Hash.new
pets["Zoey"] = "dog"
pets["Eeiney"] = "cat"

puts pets["Zoey"]
puts pets["Eeiney"]

#iterations in hashes
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

#printing multidimensional array
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each {|sub_array| sub_array.each {|element| puts element}}

#printing key and value
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}

secret_identities.each do |name, id|
  puts "#{name}: #{id}"
end
  

#only priting value
lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each {|name, order| puts "#{order}"}