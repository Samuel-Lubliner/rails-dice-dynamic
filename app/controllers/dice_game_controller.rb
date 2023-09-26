class DiceGameController < ApplicationController
  def home
    render({ :template => "game_templates/home"})
  end
  def play_any_dice
    @num_dice = params.fetch("number_of_dice").to_i

  @sides = params.fetch("how_many_sides").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

    render({ :template => "game_templates/play_any_dice"})
end
end



  