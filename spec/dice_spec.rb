require './lib/dice.rb'

describe Dice do
  before :each do
    @dice = Dice.new
  end

  it 'can roll dice' do
    expect(@dice).to respond_to(:roll)
  end

  it 'can roll a six-sided die and return result' do
    expect(@dice.roll).to be_between(1, 6)
  end
end
