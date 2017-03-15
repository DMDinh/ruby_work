require_relative 'wizard'
RSpec.describe Wizard do

  before do
    @wizard = Wizard.new("Gandalf")
  end

  it "Has default health of 175 and intelligence of 100" do

    expect(@wizard.intelligence).to eq(175)
    expect(@wizard.health).to eq(100)

  end

  it "Has method to heal wizard for 10 hp" do
    @wizard.heal
    expect(@wizard.health).to eq(110)

  end

  it "Has ancestor chain of Human" do
    expect(@wizard.class.ancestors.include?(Human)).to eq(true)

  end

  it "Has fireball method that reduces other obj health by 20" do

    @wizard.fireball(ninja)
    expect(ninja1.health).to eq(80)

  end
end
