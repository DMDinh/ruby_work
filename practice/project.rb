class Project
  attr_accessor :pname, :pdescription
  def initialize(name, desc)
    @pname = name
    @pdescription = desc
  end

  def elevator_pitch
    puts "My project name is : #{pname} and it is about #{pdescription}."
  end
end

project1 = Project.new("Jibberish", "blahblahblahhuh?")
puts project1.pname
project1.elevator_pitch
