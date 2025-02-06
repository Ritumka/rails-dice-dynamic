class DiceController < ApplicationController
  def homepage
    render({ :template => "dice_templates/homepage" })
  end
  def two_six
    render({ :template => "dice_templates/2d6" })
  end
  def two_ten
    render({ :template => "dice_templates/2d10" })
  end
  def one_twenty
    render({ :template => "dice_templates/1d20" })
  end
  def five_four
    render({ :template => "dice_templates/5d4" })
  end
  def random
    @random_dice = params.fetch("random_dice").to_i
    @random_sides = params.fetch("random_sides").to_i

    render({ :template => "dice_templates/random" })
  end
end
