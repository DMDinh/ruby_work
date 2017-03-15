require_relative "solarsystem"
RSpec.describe Planet do

before do

  @planet = Planet.new("p1", "p2", 1)

end

it "Has a class called Planet that shows name, description and population" do
  @planet.display_info
  expect(@planet.name).to eq("p1")
  expect(@planet.description).to eq("p2")
  expect(@planet.population).to eq(1)

end

end

require_relative "solarsystem"
RSpec.describe Solar_System do

before do

  @solar = Solar_System.new
  @planet = Planet.new("p1", "p2", 1)

end

it "Has a method counter that counts how many planets currently created" do
  @solar.add_planet(@planet)
  expect(@solar.counter).to eq(1)

end





end
