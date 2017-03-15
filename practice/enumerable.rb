module MyEnumerable
  def my_each
    #your code here!
    for i in 0...self.length()
      print self[i], ', '
    end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4,5,6,7,8,9,10].my_each { |i| puts i } #prints 1 2 3 4 in the terminal
