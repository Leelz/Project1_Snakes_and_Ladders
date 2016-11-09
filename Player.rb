

class Players
  attr_reader :name
  attr_accessor :current_position

  def initialize(name, dice_result = nil)
    @name = name
    @current_position = 0
    @dice_result = dice_result
  end

  def roll()
    if @dice_result.nil? 
      return 1 + rand(6)
    else 
      return @dice_result
    end
  end

  def mov_player( number )
    @current_position += number
  end

  end

