# x = [3,5,1,2,7,9,8,13,25,32]
# y = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]

# find sum
# puts x.inject(:+)
# z = []
# x.each {|x| z.push(x) if x > 10}
# puts z
# puts x.find_all {|i| i > 10}

# shuffle array and print all names
# puts y.shuffle
# puts y.find_all {|i| i.length >5}

# #3
# z = ("a".."z")
# def alphabet(z)
#   # puts z[25]
#   puts a = z.to_a.shuffle!
#   b = z.to_a.shuffle.last
# end
# alphabet(z)
#   puts "The first letter of the alphabet is #{a}."
#   if ["a", "e", "i", "o", "u"].include?(a)
#     puts "You got a vowel"
#   else
#     puts "You got nothing"
#   end
# end
# alphabet(z)

# #4 and 5
# a = Array.new(10) {rand(55..100)}
# puts a
# # puts a.sort
# max = a[0]
# min = a[0]
# a.each {|x| max = x if x > max }
# puts "The maximum in that array is #{max}"
# a.each {|x| min = x if x < min }
# puts "The minimum in that array is #{min}"

#6 and 7
# a = (0...5).map { (65 + rand(26)).chr }.join("-")
# puts a
# b = Array.new(10) {(0...5).map { (65 + rand(26)).chr }.join("-")}
# puts b
