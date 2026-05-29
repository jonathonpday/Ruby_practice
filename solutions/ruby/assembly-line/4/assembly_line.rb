class AssemblyLine

  attr_reader :speed

  CARS_MADE_PER_HOUR = 221

  LEVEL_ONE_SPEED = 1..4
  LEVEL_TWO_SPEED = 5..8
  LEVEL_THREE_SPEED = 9..9
  LEVEL_FOUR_SPEED = 10..10

  LEVEL_ONE_RATE = 1.0
  LEVEL_TWO_RATE = 0.9
  LEVEL_THREE_RATE = 0.8
  LEVEl_FOUR_RATE = 0.77

  def initialize(speed)
    @speed = speed
  end

  def production
    @speed * CARS_MADE_PER_HOUR
  end

  def production_rate_per_hour

    # case @speed
    # when LEVEL_ONE_SPEED
    #   @production * LEVEL_ONE_RATE
    # when LEVEL_TWO_SPEED
    #   @production * LEVEL_TWO_RATE
    # when LEVEL_THREE_SPEED
    #   @production * LEVEL_THREE_RATE
    # when LEVEL_FOUR_SPEED
    #   @production * LEVEl_FOUR_RATE
    # end

    production_rate = {
      LEVEL_ONE_SPEED => LEVEL_ONE_RATE * production,
      LEVEL_TWO_SPEED => LEVEL_TWO_RATE * production,
      LEVEL_THREE_SPEED => LEVEL_THREE_RATE * production,
      LEVEL_FOUR_SPEED => LEVEl_FOUR_RATE * production
    }

    speed_match = production_rate.keys.find { |range| range.include?(speed) }

    production_rate[speed_match]

  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)
  end

end
