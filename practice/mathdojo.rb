class MathDojo
  attr_accessor :result

  def initialize
    @result = 0
  end

  def add(*item)
    if item.class == Array
      @result += item.flatten.reduce(:+)
    else
      @result += item
    end
    self
  end

  def subtract(*item)
    if item.class == Array
      @result -= item.flatten.reduce(:+)
    else
      @result -= item
    end
    self
  end
end

math = MathDojo.new
puts math.add(2,3,4,5).result


# class MathDojo
#     # @result=0
#     def initialize
#         @result = 0
#     end
#
#    def add *value
#
#        i=0
#         while i < value.length()
#             if value[i].class ==Array
#                 j=0
#                 while j<value[i].length()
#                     @result+=value[i][j]
#                     j+=1
#                 end
#             else
#                 @result+=value[i]
#             end
#             i=i+1
#         end
#         return self
#     end
#
#    def subtract *value
#         i=0
#         while i<value.length()
#             if value[i].class == Array
#                 j=0
#                 while j<value[i].length()
#                     @result-=value[i][j]
#                     j+=1
#                 end
#             else
#                 @result-=value[i]
#             end
#             i=i+1
#         end
#         return self
#     end
#
#    def result
#         puts @result
#     end
# end
#
# math = MathDojo.new
# math.add(2,3,4,5).result
