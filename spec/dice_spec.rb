require './lib/dice.rb'

describe Dice do
  before :each do
    @dice = Dice.new
  end

  it 'can roll dice' do
    expect(@dice).to respond_to(:roll)
  end

  it 'can roll a six-sided die and return result' do
    expect(@dice.roll[0]).to be_between(1, 6)
  end

  it 'can roll multiple dice and return all results' do
    results = @dice.roll(3)

    expect(results.length).to eq(3)
    results.each do |result|
      expect(result).to be_between(1, 6)
    end
  end
end
