class Project
  attr_accessor :name, :description, :team
  def initialize(name, desc)
    @name = name
    @description = desc
    @team = 0
    self
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_to_team
    @team += 1
    puts "Added 1 team member!"
    self
  end

end
