a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
f = {:first_name => "David", :last_name => "Dinh"}

names = [a, b, c, d, e, f]

# puts "You have 5 names in the 'names' array"
# puts "Your name is #{a[:first_name]}"+ " " + "#{a[:last_name]}"
count = 0
for x in names
  puts "Your name is #{x[:first_name]}"+ " " + "#{x[:last_name]}"
  puts "This is the #{count} index of names array"
  count += 1
end
