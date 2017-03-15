# print 1-255
# (1..255).each {|i| print i, ","}

# print odd 1-255
# for i in 1..255; puts i if i % 2 != 0; end
# (1..255).each {|i| puts i if i % 2 != 0}

# puts (1..255).step(2).to_a

# add sum
# for i in 1..255; puts "New Number: ", i,  "New Sum: ", (((1+i)/2)*i); end
# puts (1..255).inject {|sum, i| sum + i}
# sum = 0
# (0..255).each do |num|
#   sum += num
#   puts "New Number :#{num}. New Sum :#{sum}."
# end

# x = [1,3,5,7,9,13]
# iterate through array and print index of i
# for i in x; puts i; end

# iterate through array and find max
# puts x.max
# x = [1,3,5,7,9,13]
# def find_max(x)
#   i = 1
#   max = x[0]
#   while i < x.length() do
#     if x[i] > max
#       max = x[i]
#     end
#     i += 1
#   end
#   puts "New max is ", max
# end
# find_max(x)

# Get average
# x = [20,24,64,10,23]

# def average(x)
#   sum = 0
#   i = 1
#   for i in x
#     sum += i
#   end
#   puts "Average is ", sum/x.length
# end
# average(x)

# Array with Odd Numbers
# puts (1..255).step(2).to_a
# x = [1,2,3,4,5,6,7,8,9,10]
# def array_odd(x)
#   y = []
#   for i in x
#     if i % 2 == 1
#       y.push(i)
#     end
#   end
#   puts y
# end
# array_odd(x)


# EXACTLY THE SAME AS
# x = [1,2,3,4,5,6,7,8,9,10]
# def array_odd(x)
#   y = []
#   i=0
#   while i<x.length()
#     if x[i]%2==1
#       y.push(x[i])
#     end
#     i+=1
#   end
#   puts y
# end
# array_odd(x)

# Greater than Y
# x = [1,5,11,12,20]
# def greater(x)
#   count = 0
#   y = 10
#   for i in x
#     if i > y
#       count += 1
#     end
#   end
#   puts count
# end
# greater(x)

# square indexes
# x = [2,4,6,8,10]
# def square(x)
#   x.each {|x| puts x*x}
# end
#
# square(x)

# no negatives
# x = [-1, -2, -3, 1]
# def negatives(x)
#   x.each {|x| if x > 0 then puts x else puts 0 end}
# end
# negatives(x)


# max, min, avg
# x = [1,3,5,9,0]
# max = x[0]
# min = x[0]
# x.each {|x| max = x if x > max}
# x.each {|x| min = x if x < min}
# puts "Max is #{max}"
# puts "Min is #{min}"
# puts "Average is #{x.reduce(:+)/x.size.to_i}"


# shifts array
x = [1, 5, 10, 7, -2]
# counter = 0
# x.each { x[counter] = x[counter+=1] }
# x[x.size-1] = 0
# puts x

(1..x.count - 1).each {|i| x[i-1] = x[i]}
x[x.count - 1] = 0
puts x


# x = [-1, -2, -3, 1]
# def negatives(x)
#   x.each {|x| if x > 0 then puts x else puts "Dojo" end}
# end
# negatives(x)
