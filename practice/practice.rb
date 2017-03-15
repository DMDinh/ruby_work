a = ["hello", "world", "coding", "dojo"]
b = [1,2,3,4,5,6,7,8,9,10,0]

# puts b.at(9)
# puts a.fetch(0)
# grabs at index

# puts a.delete("hello")
# deletes from self that are equal to object

# puts (a+b).reverse
# reverses array

# puts b.sort()
# sort array by numeric or alphabetical

# puts b.slice(0)
# slices from given index and returns that value

# puts b.shuffle
# shuffles randomly

# puts a.join("aaa")
# joins array with values in and returns a string

# puts a.insert(0, "hi")
# insert value at given index and value inserted

# puts b.values_at(0..4)
# puts b.values_at(1,4,9,6)
# returns values at given index or range

# iterators
# puts ["cow", "car", "plane", "penguin", "monkey", "bus"].any? {|word| word.length >=10}
# puts a.any? {|word| word.length == 1}

# puts a.each {|word| print word, "***"}

# puts (1..100).detect {|i| i % 100 == 0}
# puts (1..10).reject {|i| i%5==0}
# puts (1..10).select {|i| i%5==0}

# puts 1.upto(20) {|i| print i, "dog, "}

# x = (1..50)
# puts "Class Name: #{x.class}"
# puts "It does include 3!" if x.include? 3
# puts "The lat number of this range is " + x.last.to_s
# puts "The maximum number of this range is " + x.max.to_s
# puts "The minimum number of this range is " + x.min.to_s
#
# y = ('a'..'z')
# puts y.to_a.shuffle.to_s

arr = [22,43,525,64,12,0]
person = { fn: "david", ln: "dinh", occupation: "student", age: "24"}

# person.each do |key, value|
#   puts "The key is: #{key}, and the value is: #{value}"
#   end
# puts person[:fn]

def test
  puts "First line in the method yo"

  yield 5

  puts "Now back in the method"

  yield 10

  puts "Final line in the method man"
end

test {|i| puts "Yo back in the block my man #{i}" }



#
# x = {fn: "David", ln: "Dinh", age:"24"}
# puts "X is ", x
#
# x.delete(:age)
# puts "Now x is ", x
#
# if x.empty?
#   puts "x is empty"
#
# else puts "x is ", x
# end
#
# if x.has_key? :fn
#   puts "x has the key #{:fn}"
# else
#   puts "Is empty"
# end
#
# if x.has_value? "David"
#   puts "x has value David"
# else
#   puts "x has no value David"
# end
