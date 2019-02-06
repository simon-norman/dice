class Dice
  def roll(no_of_dice = 1)
    results = []

    no_of_dice.times do
      results.push(rand(1..6))
    end

    results
  end
end
