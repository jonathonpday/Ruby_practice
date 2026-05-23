class AssemblyLine

  CARS_MADE_PER_HOUR = 221

  LEVEL_ONE_SPEED = 1..4
  LEVEL_TWO_SPEED = 5..8
  LEVEL_THREE_SPEED = 9..9
  LEVEL_FOUR_SPEED = 10..10

  LEVEL_ONE_RATE = 1
  LEVEL_TWO_RATE = 0.9
  LEVEL_THREE_RATE = 0.8
  LEVEl_FOUR_RATE = 0.77

  def initialize(speed)
    @speed = speed
    @production = @speed * CARS_MADE_PER_HOUR
  end

  def production_rate_per_hour

    case @speed
    when LEVEL_ONE_SPEED
      @production * LEVEL_ONE_RATE
    when LEVEL_TWO_SPEED
      @production * LEVEL_TWO_RATE
    when LEVEL_THREE_SPEED
      @production * LEVEL_THREE_RATE
    when LEVEL_FOUR_SPEED
      @production * LEVEl_FOUR_RATE
    end

  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)
  end

end
