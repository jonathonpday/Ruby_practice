class AssemblyLine

  CARS_MADE_PER_HOUR = 221

  SPEED_RANGE_RATE = {
    1..4   => 1.00,
    5..8   => 0.90,
    9..9   => 0.80,
    10..10 => 0.77
  }

  private

  def initialize(speed)
    @speed = speed
    @production = @speed * CARS_MADE_PER_HOUR
  end

  attr_reader :speed, :production

  public

  def production_rate_per_hour

    rate = SPEED_RANGE_RATE.find { |range, rate| range.include?(speed) }[1]

    rate * production

  end

  def working_items_per_minute
    Integer(production_rate_per_hour / 60)
  end

end
